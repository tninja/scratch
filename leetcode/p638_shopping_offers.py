
class Solution(object):

    def shoppingOffers(self, price, special, needs):
        price = tuple(price)
        special = self.checkAndFilterSpecialOffers(price, [tuple(offer) for offer in special])
        needs = tuple(needs)
        cache = {}
        return self.solve(cache, price, special, needs)

    def solve(self, cache, price, special, needs):
        if needs not in cache:
            matched_offers = self.matchSpecialOffersGivenNeeds(special, needs)
            needs_price_candidates = []
            if len(matched_offers) > 0:
                for offer_price, updated_needs in matched_offers:
                    price_candidate = offer_price + self.solve(cache, price, special, updated_needs)
                    needs_price_candidates.append(price_candidate)
                cache[needs] = min(needs_price_candidates)
            else:
                cache[needs] = self.totalPriceWithoutSpecialOffer(price, needs)
        return cache[needs]

    def checkAndFilterSpecialOffers(self, price, special):
        filtered_special = []
        for offer in special:
            offer_price = offer[-1]
            original_price = sum([price[i] * offer[i] for i in range(len(price))])
            if offer_price < original_price:
                filtered_special.append(offer)
        return filtered_special

    def matchSpecialOffersGivenNeeds(self, special, needs):
        result = []
        for offer in special:
            is_voliate = len([i for i in range(len(needs)) if needs[i] < offer[i]]) > 0 ### You are not allowed to buy more items than you want, even if that would lower the overall price.
            if not is_voliate:
                updated_needs = tuple([needs[i] - offer[i] for i in range(len(needs))])
                result.append((offer[-1], updated_needs))
        return result

    def totalPriceWithoutSpecialOffer(self, price, needs):
        total_price = sum([price[i] * needs[i] for i in range(len(needs))])
        return total_price
