
class TreeNode(object):
    def __init__(self, id, start, end):
        self.id = id
        self.start = start
        self.end = end
        self.children = []

    def append(self, tree_node):
        self.children.append(tree_node)
        return self

    def get_total_time_spend(self):
        total_duration = self.end - self.start + 1
        return total_duration

    def get_time_spend(self):
        total_duration = self.get_total_time_spend()
        children_duration = sum([(node.get_total_time_spend()) for node in self.children])
        result = total_duration - children_duration
        return result

class Solution(object):
    def exclusiveTime(self, n, logs):
        parsed_logs = self.parseAndPreprocessLogs(logs)
        callingTree = self.buildCallingTree(parsed_logs)
        result = self.computeExclusiveTime(callingTree)
        return result

    def computeExclusiveTime(self, treeNode):
        durationDict = self.computeExclusiveTimeDict(treeNode, {})
        keys = durationDict.keys()
        keys.sort()
        result = []
        for key in keys:
            result.append(durationDict[key])
        return result

    def computeExclusiveTimeDict(self, treeNode, durationDict):
        root_duration = treeNode.get_time_spend()
        durationDict = self.setOrAddDuration(durationDict, treeNode.id, root_duration)
        for node in treeNode.children:
            durationDict = self.computeExclusiveTimeDict(node, durationDict)
        return durationDict[1:]

    def setOrAddDuration(self, durationDict, id, duration):
        if id in durationDict:
            durationDict[id] = durationDict[id] + duration
        else:
            durationDict[id] = duration
        return durationDict
        
    def buildCallingTree(self, parsed_logs):
        id, tag, start = parsed_logs[0]
        assert 'start' == tag
        id2, tag2, end = parsed_logs[-1]
        assert 'end' == tag2
        assert id == id2
        root = TreeNode(id, start, end)

        blocks = self.scanblocksFromLogs(parsed_logs[1:-1], [])
        for block in blocks:
            node = self.buildCallingTree(block)
            root.append(node)

        return root

    def scanblocksFromLogs(self, parsed_logs, blocks):
        if len(parsed_logs) == 0:
            return blocks
        elif len(parsed_logs) == 1:
            raise ValueError("Unpaired blocks %s" % str(blocks))
        else:
            id, tag, start = parsed_logs[0]
            s = 1
            assert 'start' == tag
            for i in range(1, len(parsed_logs)):
                id2, tag2, end = parsed_logs[i]
                if id == id2:
                    if 'end' == tag2:
                        s = s - 1
                        if 0 == s:
                            block = parsed_logs[:(i+1)]
                            blocks.append(block) 
                            rest_logs = parsed_logs[(i+1):]
                            return self.scanblocksFromLogs(rest_logs, blocks)
                    else: ## 'start'
                        s = s + 1 
            raise ValueError("Didn't find end tag for id %s" % id)

    def parseLine(self, line):
        idStr, tag, timeStr = line.split(':')
        id = int(idStr); tim = int(timeStr)
        return id, tag, tim

    def parseLogs(self, logs):
        parsedLogs = [self.parseLine(line) for line in logs]
        return parsedLogs

    def parseAndPreprocessLogs(self, logs):
        logs.insert(0, '-1:start:0')
        logs.append('-1:end:999999999')
        return self.parseLogs(logs)
