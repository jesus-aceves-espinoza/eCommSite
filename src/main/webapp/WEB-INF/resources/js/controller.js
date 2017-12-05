/**
 * 
 */

var cartApp = angular.module("cartApp",[]);

cartApp.controller("cartCtrl", function ($scope, $http) {	
	
	/* refreshes the cart */
	$scope.refreshCart = function (cartId) {
    	$http.get('/eMusicStore/rest/cart/'+$scope.cartId).success(function (data) {
    		$scope.cart=data;
    	});
    };
    
	/* clears the cart */    
    $scope.clearCart = function () {
    	$http.delete('/eMusicStore/rest/cart/'+$scope.cartId).success($scope.refreshCart($scope.cartId));
    	
    };
    
	/* initializes the cart */    
    $scope.initCartId = function (cartId) {
    	$scope.cartId = cartId;
    	$scope.refreshCart(cartId);
    };
    
	/* adds to the cart */    
    $scope.addToCart = function (productId) {
    	$http.put('/eMusicStore/rest/cart/add/'+productId).success(function (data) {
    		$scope.refreshCart($http.get('/eMusicStore/rest/cart/get/cartId'));
    		alert("Product successfully added to the cart");
    	});
    };
    
	/* remove the cart */
    $scope.removeFromCart = function (productId) {
    	$http.put('eMusicStore/rest/cart/remove/'+productId).success(function () {
    		$scope.refreshCart($http.get('/eMusicStore/rest/cart/get/cartId'));
    	});
    	
    };

});