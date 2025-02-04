{{
  config(
        alias='jfiat_collateral_mapping',
        post_hook='{{ expose_spells(\'["polygon"]\',
                                    "project",
                                    "jarvis_network",
                                    \'["0xroll"]\') }}'
  )
}}

SELECT 'polygon'                             AS blockchain,
       LOWER(jfiat_collateral_pool_address)  AS jfiat_collateral_pool_address,
       jfiat_collateral_symbol,
       CAST(decimals AS numeric)             AS decimals,
       LOWER(jfiat_collateral_token_address) AS jfiat_collateral_token_address
FROM (values
('0x65a7b4ff684c2d08c115d55a4b089bf4e92f5003','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x36d6d1d6249fbc6ebd0fc28fd46c846fb69b9074','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x8734cf40a402d4191bd4d7a64beef12e4c452def','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0xbe813590e1b191120f5df3343368f8a2f579514c','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'),
('0x8ae34663b4622336818e334dc42f92c41efbfa35','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'),
('0x06440a2da257233790b5355322dad82c10f0389a','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'),
('0xaec757bf73cc1f4609a1459205835dd40b4e3f29','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x1493607042c5725cef277a83cfc94caa4fc6278f','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0xc8442072cf1e131506eac7df33ea8910e1d5cfdd','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x36572797cc569a74731e0738ef56e3b8ce3f309c','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x72e7da7c0dd3c082dfe8f22343d6ad70286e07bd','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'),
('0x7ac6515f4772fcb6eeef978f60d996b21c56089d','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x25e9f976f5020f6bf2d417b231e5f414b7700e31','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x63b5891895a57c31d5ec2a8a5521b6ee67700f9f','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x4fda1b4b16f5f2535482b91314018ae5a2fda602','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'),
('0x166e4b3ec3f81f32f0863b9cd63621181d6bfed5','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'),
('0xcbba8c0645ffb8aa6ec868f6f5858f2b0eae34da','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x10d00f5788c39a2bf248adfa2863fa55d83dce36','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0xef4db4af6189aae295a680345e07e00d25ecbaab','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x91436eb8038ecc12c60ee79dfe011edbe0e6c777','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'),
('0x60e5db98d156b68bc079795096d8599d12f2dca6','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'),
('0x09757f36838aaacd47df9de4d3f0add57513531f','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'),
('0x6ca82a7e54053b102e7ec452788cc19204e831de','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x86413032f772596034aef76438aef1a62ec6121e','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x715995b91c4fa32a35514971f2f88ee2a7f59796','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0xf1a69f6937a7661a6e6f2f521f9497822bfa854c','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0xd12fba56a2e5ac6fca9bd8f5ed86859fe758efeb','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'),
('0xe4879b91a4b49337a26cbc03adccc1847df8e980','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0xdf33e7fa09706d33241e50f7f9fdba23ac9e8e7a','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x8927dcca07a405464c9fb0d48490a75b6285d623','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'), 
('0x2624b6472cf43b26d284b9f51d4af4ccf763eb87','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'),
('0x1d84f60babef98f0ffe7fd298cddd2a2caf8e02d','USDC',6,'0x2791bca1f2de4661ed88a30c99a7a9449aa84174'),
('0xbc988a0146178825c26c255989cfd5083bae672c','MIMATIC',18,'0xa3fa99a148fa48d14ed51d610c367c61876997f1')
) a (jfiat_collateral_pool_address,jfiat_collateral_symbol,decimals,jfiat_collateral_token_address)