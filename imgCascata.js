document.querySelectorAll('.product-image').forEach(img => {
    let interval;
    let currentIndex = 0;
    const images = JSON.parse(img.getAttribute('data-images'));

    img.addEventListener('mouseenter', () => {
        interval = setInterval(() => {
            currentIndex = (currentIndex + 1) % images.length;
            img.src = images[currentIndex];
        }, 800); // troca a cada 0.8s
    });

    img.addEventListener('mouseleave', () => {
        clearInterval(interval);
        currentIndex = 0;
        img.src = images[0]; // volta para a primeira
    });
});
