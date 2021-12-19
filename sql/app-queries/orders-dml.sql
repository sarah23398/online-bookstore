--- These statements create a new order for a customer when they checkout
--- The $numbers are replaced by the appropriate information (either provided by the user or defaults)
INSERT INTO public."order"(
    customer_id, order_date, credit_card, billing_address, destination, status)
    VALUES ($1, $2, $3, $4, $5, $6) RETURNING id;
INSERT INTO public.finances(
          order_id, isbn, quantity)
          VALUES ($1, $2, $3);
INSERT INTO public.shipment(
                shipment_date, shipping_status, estimated_arrival, current_address, order_id)
                VALUES ($1, $2, $3, $4, $5);