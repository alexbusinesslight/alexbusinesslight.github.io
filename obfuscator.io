// Simple calculator with secret discount logic
function calculatePrice(quantity, unitPrice) {
  const SECRET_DISCOUNT = 0.15;
  const SECRET_THRESHOLD = 100;

  let total = quantity * unitPrice;

  if (total > SECRET_THRESHOLD) {
    total = total * (1 - SECRET_DISCOUNT);
  }

  return total;
}

// Try it: calculatePrice(10, 20) => 170
console.log(calculatePrice(10, 20));
