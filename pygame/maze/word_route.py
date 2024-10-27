
class WordRoute(object):
    def __init__(self, matrix):
        self.matrix = matrix

    def buildRoute(self, word):
        startPoint, endPoint = self.getStartAndEnd(self.matrix)
        if startPoint is None or endPoint is None:
            return None
        elif len(word) >= 1:
            result = self.distributeWord(self.matrix, word,
                                         startPoint, endPoint)
            if result is None:
                return None
            else:
                chLocList, route = result
                return chLocList, route
        else:
            return None

    @staticmethod
    def buildTrace(matrix, wordPoints, stepByStepRoute):
        for point in stepByStepRoute:
            r, c = point
            matrix[r][c] = '*'
        startPoint = stepByStepRoute[0]
        matrix[startPoint[0]][startPoint[1]] = '@'
        for ch, point in wordPoints:
            r, c = point
            matrix[r][c] = ch
        return matrix

    @staticmethod
    def distributeWord(matrix, word, startPoint, endPoint):
        if len(word) == 1:
            chLocList = [(word[0], endPoint)]
            route = WordRoute.bfsRoute(matrix, startPoint, endPoint)
            if route is None:
                return None
            else:
                return chLocList, route
        else:
            stepByStepRoute = WordRoute.bfsRoute(matrix, startPoint, endPoint)
            if stepByStepRoute is None:
                return None
            else:
                if len(stepByStepRoute) < len(word) + 1:
                    return None
                else:
                    n = len(word)
                    partitionedPoints = WordRoute.partitionRouteToPoints(stepByStepRoute[1:], n)
                    wordPoints = []
                    for i in range(n):
                        wordPoints.append((word[i], partitionedPoints[i]))
                    return wordPoints, stepByStepRoute

    @staticmethod
    def partitionRouteToPoints(route, n):
        assert len(route) >= n
        pointList = []
        lr = len(route)
        segment_size = len(route) // n
            
        for i in range(n):
            # start = i * segment_size
            if i < n - 1:
                end = (i+1) * segment_size - 1
            else:
                end = len(route) - 1
            pointList.append(route[end])
        return pointList

    @staticmethod
    def bfsRoute(matrix, startPoint, endPoint):
        sr, sc = startPoint
        er, ec = endPoint
        assert matrix[sr][sc] == 0
        assert matrix[er][ec] == 0
        queue = [[startPoint]]
        visited = set()
        backTrace = {}
        rows, cols = WordRoute.getDim(matrix)
        i = 0
        while i < len(queue):
            curPointList = queue[i]
            visited = visited.union(set(curPointList))
            nextPointList = []
            for point in curPointList:
                adjPointList = WordRoute.getAdjacentPoints(point, rows, cols)
                for adjPoint in adjPointList:
                    ar, ac = adjPoint
                    if matrix[ar][ac] == 0 and adjPoint not in visited:
                        nextPointList.append(adjPoint)
                        backTrace[adjPoint] = point
            if len(nextPointList) > 0 and endPoint not in nextPointList:
                queue.append(nextPointList)
            i += 1
        route = WordRoute.bfsBackTraceRoute(backTrace, startPoint, endPoint)
        return route

    @staticmethod
    def bfsBackTraceRoute(backTrace, startPoint, endPoint):
        # print(backTrace)
        if endPoint not in backTrace:
            return None
        else:
            point = endPoint
            route = [point]
            while point != startPoint:
                point = backTrace[point]
                route.append(point)
            route.reverse()
            return route

    @staticmethod
    def getAdjacentPoints(point, rows, cols):
        if rows == 1 and cols == 1:
            return []
        else:
            r, c = point
            rm1 = r - 1
            rp1 = r + 1
            cm1 = c - 1
            cp1 = c + 1
            resultList = []
            if rm1 >= 0:
                resultList.append((rm1, c))
            if rp1 < rows:
                resultList.append((rp1, c))
            if cm1 >= 0:
                resultList.append((r, cm1))
            if cp1 < cols:
                resultList.append((r, cp1))
            return resultList

    @staticmethod
    def getStartAndEnd(matrix):
        startPoint = WordRoute.getStart(matrix)
        endPoint = WordRoute.getEnd(matrix, startPoint)
        return startPoint, endPoint

    @staticmethod
    def getStart(matrix):
        rows, cols = WordRoute.getDim(matrix)
        if rows == 0 or cols == 0:
            return None
        else:
            freePosList = []
            for row in range(rows):
                for col in range(cols):
                    if matrix[row][col] == 0:
                        freePosList.append((row, col))
            if len(freePosList) == 0:
                return None
            else:
                return freePosList[0]  ## TODO: randomize this

    @staticmethod
    def getEnd(matrix, startPoint):
        if startPoint is None:
            return None
        sr, sc = startPoint
        assert matrix[sr][sc] == 0
        endDistList = []
        rows, cols = WordRoute.getDim(matrix)
        for row in range(rows):
            for col in range(cols):
                if matrix[row][col] == 0 and not (row == sr and col == sr):
                    d = abs(row - sr) + abs(col - sc)
                    endDistList.append((d, (row, col)))
        if len(endDistList) == 0:
            return None
        endDistList.sort()
        return endDistList[-1][1]  ## TODO: randomize this

    @staticmethod
    def getDim(matrix):
        if len(matrix) == 0:
            return 0, 0
        rows, cols = len(matrix), len(matrix[0])
        return rows, cols
