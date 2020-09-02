module.exports = async function (context, req) {
    
    context.log('GetReviews HTTP trigger function invoked.');

    const productReviews = [
        { productId: 1, review: "This was great!" },
        { productId: 2, review: "Not too shabby" },
      ];

    context.res = {        
        body: productReviews
    };
}