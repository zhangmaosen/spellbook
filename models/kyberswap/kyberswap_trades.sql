{{ config(
        alias ='trades',
        post_hook='{{ expose_spells(\'["avalanche_c"]\',
                                "project",
                                "kyberswap",
                                \'["zhongyiio", "hosuke"]\') }}'
        )
}}

{% set kyber_models = [
'kyberswap_avalanche_c_trades'
] %}


SELECT *
FROM (
    {% for dex_model in kyber_models %}
    SELECT
        blockchain,
        project,
        version,
        block_date,
        block_time,
        token_bought_symbol,
        token_sold_symbol,
        token_pair,
        token_bought_amount,
        token_sold_amount,
        token_bought_amount_raw,
        token_sold_amount_raw,
        amount_usd,
        token_bought_address,
        token_sold_address,
        taker,
        maker,
        project_contract_address,
        tx_hash,
        tx_from,
        tx_to,
        trace_address,
        evt_index
    FROM {{ ref(dex_model) }}
    {% if not loop.last %}
    UNION
    {% endif %}
    {% endfor %}
)
;