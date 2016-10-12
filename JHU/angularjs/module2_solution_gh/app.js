(function() {
    'use strict';

    var buy = [
        {
            name: 'cookies',
            quantity: 10
        },
        {
            name: 'candies',
            quantity: 100
        },
        {
            name: 'jellies',
            quantity: 5
        },
        {
            name: 'lollipops',
            quantity: 8
        },
        {
            name: 'cakes',
            quantity: 12
        }
    ];

    var bought = [];

    angular.module('ShoppingListCheckOff', [])
    .controller('ToBuyController', ToBuyController)
    .controller('AlreadyBoughtController', AlreadyBoughtController)
    .service('ShoppingListCheckOffService', ShoppingListCheckOffService);

    ToBuyController.$inject = ['ShoppingListCheckOffService'];
    function ToBuyController(ShoppingListCheckOffService) {
        var toBuy = this;

        toBuy.showList = ShoppingListCheckOffService.getBuyItem();
        toBuy.boughtItem = function(itemIndex) {
            ShoppingListCheckOffService.boughtItem(itemIndex);
        };
    };

    AlreadyBoughtController.$inject = ['ShoppingListCheckOffService'];
    function AlreadyBoughtController(ShoppingListCheckOffService) {
        var alreadyBought = this;

        alreadyBought.showList = ShoppingListCheckOffService.getBoughtItem();
        alreadyBought.buyItem = function(itemIndex) {
            ShoppingListCheckOffService.buyItem(itemIndex);
        }
    };

    function ShoppingListCheckOffService() {
        var service = this;

        service.getBuyItem = function() {
            return buy;
        };

        service.getBoughtItem = function() {
            return bought;
        };

        service.boughtItem = function(itemIndex) {
            bought.push(buy[itemIndex]);
            buy.splice(itemIndex, 1);
        };

        service.buyItem = function(itemIndex) {
            buy.push(bought[itemIndex]);
            bought.splice(itemIndex, 1);
        }
    };

})();