function payer() {

    const payementUrl = 'https://buy.stripe.com/test_14kaFs9YNgBWe7S001';

    const params = new URLSearchParams({
        product_id: '12345',
        user_id: '67890'
    }).toString();


    window.location.href = `${payementUrl}?${params}`;
}