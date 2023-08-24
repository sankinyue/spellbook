{{ 
  config(
	tags=['legacy'],
	
    alias = alias('contract_creator_address_list', legacy_model=True),
    unique_key='creator_address',
    post_hook='{{ expose_spells(\'["optimism"]\',
                              "sector",
                              "contracts",
                              \'["msilb7", "chuxin"]\') }}'
    )  
}}

WITH curated_list AS (
  select 
    lower(creator_address) as creator_address
    ,cast(contract_project as varchar(250)) AS contract_project
  from 
      (values
      ('0x932607335869cff6349ef450e74c83a3b871a9ff', 'Lyra')
      ,('0x41a742d0cb523b0c313518309ade763fb609da25', 'Lyra')
      ,('0x924ac9910c09a0215b06458653b30471a152022f', 'Hop Protocol')
      ,('0xfefec7d3eb14a004029d278393e6ab8b46fb4fca', 'Hop Protocol')
      ,('0x0e0e3d2c5c292161999474247956ef542cabf8dd', 'Hop Protocol')
      ,('0x3c0ffaca566fccfd9cc95139fef6cba143795963', 'Hop Protocol')
      ,('0xec4b41af04cf917b54aeb6df58c0f8d78895b5ef', 'Hop Protocol')
      ,('0x7ed52863829ab99354f3a0503a622e82acd5f7d3', 'Rari')
      ,('0x44045fd5d3840fec51b76fb6a87cbcda735a8629', 'Slingshot')
      ,('0x3204ac6f848e05557c6c7876e09059882e07962f', 'Rubicon')
      ,('0xee4f7b6c39e7e87af01fb9e4cee0c893ff4d63f2', 'OneInch')
      ,('0x11799622f4d98a24514011e8527b969f7488ef47', 'OneInch')
      ,('0x74886e43273e66da073d26d91cdb4f0eb91fc420', 'OneInch')
      ,('0x7a3d05c70581bd345fe117c06e45f9669205384f', 'Rainbow')
      ,('0x075da589886ba445d7c7e81c472059de7ae65250', 'Maker')
      ,('0x395ec94bf3e3dcd3afbd82cd03197731411e396b', 'Synthetix')
      ,('0x3c05b1239b223c969540fefc0270227a2b00e047', 'Synthetix')
      ,('0x6c9fc64a53c1b71fb3f9af64d1ae3a4931a5f4e9', 'Uniswap')
      ,('0xdead1cb30b3ca13cd67d1d6f4e2790d12484fdd8', 'Chainlink')
      ,('0x03863f6ad36f1fcd908517e3c56c6b3fd3f50752', 'Chainlink')
      ,('0x1e4e0e7dd2a854ea15f4ee852abb78a99c86357c', 'Uniswap')
      ,('0xced01e7617bf6052a71154daa6d50d8b243f1b26', 'Uniswap')
      ,('0xd640037fa41436326e4a0e3fd0511aad83d2345c', 'Xchain')
      ,('0x1b9dfc56e38b0f92448659c114e2347bd803911c', 'Celer')
      ,('0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d', 'Across')
      ,('0x155b15a7e9ff0e34ceaf2439589d5c661adc9493', 'Connext')
      ,('0xc715aa67866a2fef297b12cb26e953481aed2df4', 'dHedge')
      ,('0xf8c3875bfa461a38532fedf90453985901c55114', 'Dope Wars')
      ,('0x42d4cb9514710d8b90e790aa80ac3cc635b66589', 'Optimistic Bunnies')
      ,('0xda32bd8e86575f827f0d36272f703d5370c06152', 'OptiPunks')
      ,('0x0af91fa049a7e1894f480bfe5bba20142c6c29a9', 'Synapse')
      ,('0x22cdc93f53ee3f6b8ad66fad6f98915a5349950e', 'Synapse')
      ,('0xa67b7147dce20d6f25fd9abfbcb1c3ca74e11f0b', 'Synapse')
      ,('0xa9e90579eb086bcda910dd94041ffe041fb4ac89', 'Synapse')
      ,('0xa430a8a6911e8de02acfe835eb1d5539a58cee94', 'Flux Protocol')
      ,('0x0e860f44d73f9fdbaf5e9b19afc554bf3c8e8a57', 'Poly Network')
      ,('0xe1cb04a0fa36ddd16a06ea828007e35e1a3cbc37', 'Gnosis Safe')
      ,('0x914d7fec6aac8cd542e72bca78b30650d45643d7', 'Gnosis Safe')
      ,('0xab0d90fde397a4362acbe1d3a1c17f24b5b53266', 'Gnosis Safe')
      ,('0x3e579180cf01f0e2abf6ff4d566b7891fbf9b868', 'BitBTC Protocol')
      ,('0xd15d5d0f5b1b56a4daef75cfe108cb825e97d015', 'Superfluid')
      ,('0xbabe61887f1de2713c6f97e567623453d3c79f67', 'Curve')
      ,('0x7eeac6cddbd1d0b8af061742d41877d7f707289a', 'Curve')
      ,('0x763b9dba40c3d03507df454823fe03517f84a5ab', 'WePiggy')
      ,('0x85671317830357f40188aa6a55e96a3338eb4d7d', 'Volmex')
      ,('0xee9801669c6138e84bd50deb500827b776777d28', 'O3 Swap')
      ,('0xe37da1e4632b94e601ac015be8db554e0456b01a', 'EtherOrcs')
      ,('0x849a19c0746fb0d335e02dec0d0b3e057e585176', 'Perpetual Protocol')
      ,('0x6c3f14da26556585706c02af737a44e67dc6954d', 'Go Pocket')
      ,('0x27b2458658f036838c2050b2b35e874e57fe4789', 'Diamondfoot NFT')
      ,('0x98ab60422568db7d58623c69cb41d29c9dea1ce6', 'NiftyKit')
      ,('0x644b37ea8027b81ef1bdcd10ac0a78ea8532b7c8', 'Nuke Vaults')
      ,('0xb56238d0225c7e6155591916167c138a4be2babc', 'tdao')
      ,('0xf3315a3e482a96b8c327674b7a16151dcd899a9a', 'FeestArb')
      ,('0x4b49652fbf286b3da10e44442c38134d841159ef', 'universexyz')
      ,('0xe5cd62ac8d2ca2a62a04958f07dd239c1ffe1a9e', 'Unlock Protocol')
      ,('0x47c8f1db1df960b2ff00b240038576098277e8da', 'Kwenta')
      ,('0xf2cafb99992ce6a49f948b452c783614808612d1', 'WePiggy')
      ,('0x6275d233a12b7cc747e41543878c31b604d0bae1', 'Test xidian')
      ,('0xbc0895f9d50ddcad909f7089fc642e59006a9460', 'thirdweb')
      ,('0x80898b704baa55e7e37f1128fc6ae5836661f54a', 'Pika Protocol')
      ,('0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3', 'Set Protocol')
      ,('0x3af9fe35d280ada5a5edb1bef3ed872a3231d73c', 'POA')
      ,('0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be', 'Aktionariat')
      ,('0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b', 'Pods')
      ,('0x304c736acd582fc72db1ddff12fc368a685a5897', 'KratosDAO')
      ,('0x6fdbcdb16027b86ab0fa5846e53b1b0952b4580c', 'Rentable')
      ,('0xc0fcf8403e10b65f1d18f1b81b093004b1127275', '88mph')
      ,('0x082443883d739faea9bfd590ab550f7184f050c9', 'Composable Finance')
      ,('0x420220b72bbd307db8615e7aa0eadca399cf2fc0', 'handlefi')
      ,('0x2cc3befb75e5b9c04eb90f8167c5c8c8523c30eb', 'RaptureLabs')
      ,('0x0022ec3dd352bf214a9d936081f10ffac66455e1', 'Terrae')
      ,('0x558ef269bcc4cc9f2e14e3f4301231fbeb85d95f', 'BarnBridge')
      ,('0x6861d375afa2c9e5f7d82c176fb50ea70356740a', 'HungryBunz')
      ,('0xafd618064739a2820f5f80c2585563a8af0e6871', 'SupDucks')
      ,('0xab0b18523e8fe8cbf947c55632e8ab5ce936ae8c', 'Gridzoneio')
      ,('0x9f60699ce23f1ab86ec3e095b477ff79d4f409ad', 'InstaDapp')
      ,('0x7754c0584372d29510c019136220f91e25a8f706', 'FNDZ')
      ,('0x88888887c3ebd4a33e34a15db4254c74c75e5d4a', 'Stability')
      ,('0x99910e7d8895248320744b6f9a49f8afb1ad8b31', 'iOS DeFi Wallet')
      ,('0x9d59cf867ec98b67ab05b7f482eb38baf3884058', 'CST')
      ,('0x057fcd7bd66e0b0e7cbf387d12b2a49a20d30922', 'EPNS')
      ,('0xfaed87bc8a4721442d501bb190bd767a0d34c84b', 'Optimistic Loogies')
      ,('0x992dac69827a200ba112a0303fe8f79f03c37d9d', 'ETHDubai')
      ,('0x7126c3c6d04e4a2a89e2b1589a96d37724be9e39', 'Tally')
      ,('0x697ef32b4a3f5a4c39de1cb7563f24ca7bfc5947', 'Insula')
      ,('0x54054ea2db6edc336cb87966815fd66cc337f224', 'Keep3r Network')
      ,('0x3dff16210a6c9ffb7ee50c6eb21bb6675b86adf4', 'YIN Finance')
      ,('0xc7f73196a301948866f457add5eadb961fe05fb3', 'YIN Finance')
      ,('0xe4379a25a0db888e19ec2c14416fe68a62aca5cc', 'WPSmartContractscom')
      ,('0x4816506e22004f8ce02963f5cd9703afb1c394d4', 'FIDIS FI25 Crypto Index')
      ,('0x5b0f8d8f47e3fdf7ee1c337abca19dbba98524e6', 'Gardens')
      ,('0xdbaabc182e5fcebf216c353a3ebe32cdb7390094', 'Kromatikafinance')
      ,('0x74888d40a3523397500afebac92152f4617997b3', 'realityeth')
      ,('0x2c6d58c52accf2a04138c76ee11c1b5a100ef6a5', 'OptiMarket')
      ,('0xef31d75a2f85cfdd9032158a2ceb773c84d79192', 'dHedge')
      ,('0x9841484a4a6c0b61c4eea71376d76453fd05ec9c', 'Thales')
      ,('0x8314125c8b68af2afd0d151eb4a551e88128a2ae', 'Thales')
      ,('0xde6d6f23aabbdc9469c8907ece7c379f98e4cb75', 'dForce')
      ,('0x1b5caa1d3a1582a438e4cd93ee7a7e0e4d5624fb', 'Uniswap')
      ,('0xc73567e09e1774f6e9e5f1f9de7fd0c3c4ce94fa', 'NFT for my bro')
      ,('0xa71405f7d11734f03f2616b93eaed22604c978bf', 'Mean Finance')
      ,('0x0f5b021bb7300a83b7ff74fe39b56908fc0929c3', 'The Cyber Inu')
      ,('0xfdd9c344a52ace735564f1dc1ec19bd507dd5037', 'TRDEFI')
      ,('0xfe64a36b1465dfac28e93add6d8c5ecca816a7d0', 'HomepageDAO')
      ,('0x80094b8ef0b5762661e6ba3daf9d8acb5b0620e6', 'Imbue')
      ,('0x962193e0101ab216f362435a276b22e2172fc847', 'Gladiaxy')
      ,('0x876db660de545a14aa14bb6069e5b369cc233241', '18Decimal')
      ,('0x4862eb1658b72555934b91bf9aee142849e736b9', 'Yeti')
      ,('0xa28f0249ec1d48a0022792ec8e708020cb27c815', 'Crypto Sigma Males NFT')
      ,('0x000f05552f24850e75793d38c2bd0cbd249a9ff4', 'RigoBlock')
      ,('0x287bd66753f0ca8e9c2171d782df39e4c28cfd65', 'Poly Network')
      ,('0x037a9d5dd0fd9bc48d699f1010b9ec68bb839e34', 'CyberFrens')
      ,('0x74e5189d4258eaf1236d4fd1454225c0a4b54907', 'PelicanSwap')
      ,('0xd4fb8e266a490103b0515e22c99d6643a288a455', 'DefiYield')
      ,('0xc602aaf1b61fdf7834c4138cd96400738d298807', 'AllianceBridge')
      ,('0x7a68685e4d5d67322a26db639c62ac1460823905', 'zeroex')
      ,('0xdef1c0ded9bec7f1a1670819833240f027b25eff', 'zeroex')
      ,('0xe750ad66de350f8110e305fb78ec6a9f594445e3', 'zeroex')
      ,('0xf8ebddd333b3ab285906fd5eb603b17ecd18266f', 'zeroex')
      ,('0x60908c4037cbb8f3aa040d9fb668ab36280eb871', 'zeroex')
      ,('0x8602ee2f8aaeb671e409b26d48e36dd8cc3b7ed7', 'ZipSwap')
      ,('0xf7c1daf7443d7307df13c81f5f0328d4c7803e7b', 'BoringDAO')
      ,('0x38e63793993ae54be374d129f34a3faf2c382e97', 'TokenFunder')
      ,('0x512472840327530ea03cce6f58966b221f3a8b6a', 'Perpetual Protocol')
      ,('0x56cf1fa9185e42e90205e955e299f33b6204da59', 'DoraHacks')
      ,('0x6336cf6f9a7abb9efa86c04ac29541f015dd58b1', 'XmasBook')
      ,('0xb5bb09ecaecb7fca6c837ab706ce321b3a3dd949', 'VaultDefi')
      ,('0x6a932f0ae2a7a49fb24b70c8eef6ec0808163345', 'PhotoDAO')
      ,('0x5b9319b2cd3d702ba12398c8e7515979276c038d', 'PhotoDAO')
      ,('0x9986ee0c3eea15dcf8642b56179652f9589b95db', 'OpenOcean')
      ,('0x992ebe8be326ea0cd7d30a98740d9899612330bb', 'Band Protocol')
      ,('0x6a885bd0086368b56dbf2005bb72bbcc5fd7e2b9', 'Band Protocol')
      ,('0x21ffcbdbdd2c0f59d779cf8f1fd0a87b5f84bc44', 'OctoFinance')
      ,('0x8c1fd2de219c98f5f88620422e36a8a32f83324e', 'opengsn')
      ,('0x892e04f20f9d7118917d7f94850c3c9423120c32', 'Teahouse')
      ,('0x9972d940c9a23f84fcf92867d18f28d75d010e5e', 'Mask Network')
      ,('0x74f85fe5538dbfcf3b46399e121c3ba83f695f91', 'TokenPocket')
      ,('0xcf85a70d88d14d157c50aa61999f7808027a15d6', 'Animal Coloring Books')
      ,('0x2596b971ee0de4532566c59fa394c0d29f21d224', 'OE Ape')
      ,('0xec1557a67d4980c948cd473075293204f4d280fd', 'Quix')
      ,('0x7856f2a12a7a18b4a115d295f548434a9b078fa1', 'Aelin')
      ,('0xdbeabb16b017d321cbaa00c7412ce76d08ec2fc1', 'BitBTC Protocol')
      ,('0xc22834581ebc8527d974f8a1c97e1bea4ef910bc', 'Gnosis Safe')
      ,('0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34', 'Socket')
      ,('0xfd8c6ebe0d284f9d2c9665f17bba47032259e907', 'Connext')
      ,('0x83bc3055649f9a829bebeccbc86e090d6a157161', 'Chainlink')
      ,('0x2ae8831a00b3ebd603c0028b317cf30e578a4a3c', 'Perpetual Protocol')
      ,('0x0c16527ec6d017541568f1998fda2b3c24b81977', 'CatDAO')
      ,('0xf9ce0b68f4baa50bd30128a01c5297e2b46a6428', 'CircusDAO')
      ,('0xd9cbe784df2ae03ea0e22335bb5cd7fcb42a0e32', 'Gelato')
      ,('0x88215a2794ddc031439c72922ec8983bde831c78', 'Arrakis Finance')
      ,('0x11978d32619cfefc2e7c75a70ef8beb077b503ca', 'Frax Finance')
      ,('0x68d03de837cc395ec34c61c078fa901468a3bb29', 'Frax Finance')
      ,('0x4707ddf20584a1df862403e7e0cc77c33330dca0', 'Bongswap')
      ,('0x97b62cd23a04be0e0dc4a5f03ddbd0addc8ba29a', 'Band Protocol')
      ,('0xf6839085f692bde6a8062573e3da35e7e947c21e', 'InstaDapp')
      ,('0x26ed8119c45e3871df446a13f7fdc9e2c527dacd', 'InstaDapp')
      ,('0x5bdb37d0ddea3a90f233c7b7f6b9394b6b2eef34', 'Saddle Finance')
      ,('0xde910777c787903f78c89e7a0bf7f4c435cbb1fe', 'Synthetix')
      ,('0xb9bac083c6a968fe5d63e9e2337312f1a40c710a', 'Circular Art')
      ,('0x332b9e15db0c413de6f88b278b0016de3af005a0', 'Pegasus Finance')
      ,('0xfeebd6b860d4f33ec03014af0ee0a35ce8d6fd97', 'Pegasus Finance')
      ,('0xe48a5173ade669651120cb5e99e6fe140d4d73da', 'Mean Finance')
      ,('0xe69d24dd645d3d6a9985665dc0d5f8d57597e915', 'BitBTC Protocol')
      ,('0x35a9f94af726f07b5162df7e828cc9dc8439e7d0', 'BtcMirror')
      ,('0x294cb241ebf6fe95bbb76071c7cda8dd62eb138e', 'Cryptex')
      ,('0xa2e00fbd1e9315f490ae356f69c1f6624e2ed992', 'Nuke Vaults')
      ,('0x5befa2d163e40e148df83921e1cc59e044df5471', 'XDao')
      ,('0x03238279fa90dca3a02a65113f290cea01d48d87', 'Mirror')
      ,('0x6eb3783165e3e9bf6f3b463524738a2147be08ff', 'Clipper')
      ,('0x7a4535c67f2617d2590617666295c46c9f044f0d', 'Set Protocol')
      ,('0x71d024c31a1324496b9f69533618cefd09770010', 'Pilgrim Protocol')
      ,('0x89dea587db263d8c82bc63c2ae2b6f4784c418d9', 'OptiMarket')
      ,('0x057c75c9b1072be82ddd90b64501f525a9a300e7', 'Chainlink')
      ,('0xfa9da51631268a30ec3ddd1ccbf46c65fad99251', 'Multichain')
      ,('0x3976d5b90cfa0a0cc4d62983455ff6a6909f0f18', 'Dentacoin')
      ,('0x5ce7d83f7aaac17a0ad40540b37fc7a0b688ff44', 'Olympus')
      ,('0x5777aa6f437399af6cef2fce0be8d4b4ed7c7232', 'Umbra')
      ,('0xb16a11442878d6f1ef202ae63233a7c13e98fd7f', 'Hundred Finance')
      ,('0x7a1285a7381a3099bfe6706549859316e6f90e6a', 'Aave')
      ,('0xc841a5fb20d2395316ff9d7cfa2032ab51e70f00', 'BitBTC Protocol')
      ,('0xfadcbe6735146c6839e2748a371450a4540e12f3', 'Dentacoin')
      ,('0xf663a1d22ec5cec99c4bb404ec3e948895afcd73', 'Chainlink')
      ,('0x8286dc6df929c4bfa4f6951cab4dae2ec02d4d72', 'Hundred Finance')
      ,('0xc36142c497053c42bdaa14737bf80e71daa984c5', 'InstaDapp')
      ,('0xf125ccc0a0332ba7b51a601d0975ac44cc3b5655', 'InstaDapp')
      ,('0x161b29d1919d4e06b53ee449376181b5082b30b9', 'Zerion')
      ,('0xfd0bd19e849493f77d8f77ed026520c1368102bd', 'Layer2DAO')
      ,('0xbc577bddeb479eeabadf5303a1221cf84c074ea7', 'xToken')
      ,('0xaa2e0c5c85acb7717e58060ab3c96d2b184ee07c', 'Arrakis Finance')
      ,('0xd82fbd545f8205f67006309773b2e065c6764ee5', 'Superfluid')
      ,('0x9f403140bc0574d7d36ea472b82daa1bbd4ef327', 'Layer Zero')
      ,('0x1dd2560c3c818ed81208f2e6bc042c241dc9b22e', 'ChainShot')
      ,('0x4365f8e70cf38c6ca67de41448508f2da8825500', 'Aave')
      ,('0xae0b890a625a87c23a1fccdefb4c26a798719f17', 'Aave')
      ,('0x1d7c6783328c145393e84fb47a7f7c548f5ee28d', 'Stargate Finance')
      ,('0x0298f4332e3857631385b39766325058a93e249f', 'Sabiler')
      ,('0xb29050965a5ac70ab487aa47546cdcbc97dae45d', 'Punk Domains')
      ,('0x83a15cb9781458b421ad11def469586242cd06cb', 'Superfluid')
      ,('0x8b1727d9322e7bb82e87018f0a4f0d60a3d0866d', 'Superfluid')
      ,('0xcc59c42d05bd66fe22fba27016f783af43f68fa7', 'Aktionariat')
      ,('0x322d58b9e75a6918f7e7849aee0ff09369977e08', 'DeFi Saver')
      ,('0x3527a204a5260a0e36ca695312379370328e4e6c', 'Mirror')
      ,('0x820f92c1b3ad8e962e6c6d9d7caf2a550aec46fb', 'Tipcc')
      ,('0xaa270c9cf88e3806bfa1e3cd983f34af339a7ffc', 'Synapse')
      ,('0xb00b19938346b745ccb3fc4fad946de0caa724a2', 'Router Protocol')
      ,('0xb00bc9e04698a3315b6038225a2e9e42d63c7669', 'Router Protocol')
      ,('0x9f76043b23125024ce5f0fb4ae707482107dd2a8', 'Polynomial Protocol')
      ,('0x6ece61d29b90642941c41240da924690da145696', 'Stargate Finance')
      ,('0x57ade2f6723dea166d17694a576403ba9750762d', 'Mirror')
      ,('0xacfe4511ce883c14c4ea40563f176c3c09b4c47c', 'Pickle Finance')
      ,('0xc9424ba7e09a46f50f8aa89203c61149091adbcd', 'LayerZero')
      ,('0x473ab11a7b649064ee50b255b5b14dfe284a0373', 'Chainlink')
      ,('0x954e3eb8de035ec1bc8fe8fa0091d5b87ab17d47', 'LiFi')
      ,('0x079a889eb69013d451ecf45377258948116e2b3e', 'tofuNFT')
      ,('0xe00eaa2787a8830a485153b7bf508bc781e4a220', 'QiDao')
      ,('0xb49a6213da096f72c6f83c63a68f43caabb113ad', 'KEVoLUTION')
      ,('0x14719476c596fce28d381bd3ac12c3ce4698a1e9', 'Raid Project')
      ,('0xeb10511109053787b3ed6cc02d5cb67a265806cc', 'Party Panda')
      ,('0x919124f5f5135d3020a0b075412679755545f7c5', 'Curve')
      ,('0x244a807084a3eb9fd5fe88aa0b13aec8401577bd', 'dLab')
      ,('0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c', 'WardenSwap')
      ,('0xbb73463b88b0cb9681f176d6d43a12c2fea2c237', 'DeFiHelper')
      ,('0x386a28709a31532d4f68b06fd28a27e4ea378364', 'DODO')
      ,('0x817b4eab0e595801f382f531e36245ebcd401452', 'Pegasus Finance')
      ,('0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd', 'Nested')
      ,('0x4fbe899d37fb7514adf2f41b0630e018ec275a0c', 'Beethoven X')
      ,('0x3d64fb8a2fFd08C186e8060aA57c8011D8b999cC', 'Beethoven X')
      ,('0x697A71353A4BC1eb1356763018a229c27a3fbA0C', 'Beethoven X')
      ,('0xADE38bd2E8D5A52E60047AfFe6E595bB5E61923A', 'Gamma')
      ,('0x9c5a87452d4FAC0cbd53BDCA580b20A45526B3AB', 'Niftyswap')
      ,('0x669dcFd6C2c0B267DDa08E9478E3e2c9Def8b7f2', 'Putty')
      ,('0xf87BC5535602077d340806D71f805EA9907a843D', 'Sushi')
      ,('0xE8bc44AE4bA6EDDB88C8c087fD9b479Dff729850', 'Hashflow')
      ,('0x2AfAeCA15Ac8A62E9bfa3EAF0285315AbAEcf334', 'Elk Finance')
      ,('0x111617795C52555D45cF100D0cBF01c82E157E81', 'Elk Finance')
      ,('0xF220eA963D27Ebe782f09403017B29692A4fC4aE', 'Elk Finance')
      ,('0x8b5F94a2c2e23eE8cC0Ff56872aF973243eF7628', 'ChainHop')
      ,('0x00778C4222c7d837cbfe4C1539AD10c127eC1C1F', 'Celer')
      ,('0xbac4edFAB0FFBD3344B163fAd587F07261c6CD7E', 'Backed')
      ,('0x4a27c059FD7E383854Ea7DE6Be9c390a795f6eE3', 'Backed')
      ,('0x5b0390bccCa1F040d8993eB6e4ce8DeD93721765', 'Tarot Finance')
      ,('0xCDf41a135C65d0013393B3793F92b4FAF31032d0', 'Gelato')
      ,('0xbA3C7B0b8f29b41F0E841c1ffB1Bda8B605830dA', 'DefiSaver')
      ,('0x0000000000933edea24f198114758e45BF9B9f14', 'Mean Finance')
      ,('0x98D93988b17caDdeC301aC40E805c565F2D5925B', 'Optimistic Loogies')
      ,('0xc0DE1436C4E247F8652476A0B9ff55699801e1d0', 'Velodrome')
      ,('0xab1ef74D2C461e95f4b658ca1f94aC519ad80BA2', 'OP')
      ,('0x9983D8cDEAf7872501628229d311E2F7Df396aDd', 'EvoDefi')
      ,('0x05ec0f0112CA25846886B04f2587bEfafC2A8d68', 'EvoDefi')
      ,('0x7EfDC11929225F1756479006149b0bd7A2b89C1E', 'Apetimism')
      ,('0xe027880CEB8114F2e367211dF977899d00e66138', 'Granary')
      ,('0x4826B5F57600e63f4C22CED5f1FfCff442F00D3a', 'DeCommas')
      ,('0x0132613b3A1061816F4661Ad301612910E3Cce0B', 'XY Finance')
      ,('0x72f0a08d8f8102cafBB3974566b9861a1ba74d34', 'Elk Finance')
      ,('0x35D504BC2A8D04bf3b90e285eB5c41F53F6353cc', 'Dragonia')
      ,('0x010dA5FF62B6e45f89FA7B2d8CEd5a8b5754eC1b', 'Beefy Finance')
      ,('0xdd99b75f095d0c4d5112aCe938e4e6ed962fb024', 'ThirdWeb')
      ,('0x4B6B6A3Af8C882B53C2cC99f016C89B231cE441d', 'Matrix')
      ,('0xdC0D4BdCc70362cEDd23d3997C31528Ec1502FC4', 'Biconomy')
      ,('0x0c36A5b01E1668C867A5e58f23bb6cb4d83a4cc8', 'Rainbow')
      ,('0x3A893A7525C4263052c3C04f9C32d919c75cb8e0', 'Symphony Finance')
      ,('0x939c8d89ebc11fa45e576215e2353673ad0ba18a', 'OpenSea')
      ,('0x7c9c773e41a3b68924b3b4924df8fffcf7ae7e18', 'Naga DAO')
      ,('0x24bD918b03dB3f16557942A15c92b6859510c4dc', 'Diamond Protocol')
      ,('0x9143743c4a54fdCF81f38e2370A4e9819E98797c', 'Diamond Protocol')
      ,('0xF6c5B9c0B57590A5be6f16380D68eAC6fd9d0Fac', 'Ooki')
      ,('0x90899D3Cc800C0a9196AeC83DA43e46582cB7435', 'Ren')
      ,('0x3Fc25fB2fbd5b1Ae1c9528Fe5Be8c7EF91fCD95b', 'Holozaki')
      ,('0x4856e043a1F2CAA8aCEfd076328b4981Aca91000', 'Quix')
      ,('0xd7f73cbf2b6ac915976cc96706b76d6425fbc234', 'PoolTogether')
      ,('0x4D40eb12430A57965cEe3015348d490C6156dF20', 'PoolTogether')
      ,('0xAE75B29ADe678372D77A8B41225654138a7E6ff1', 'Brahma')
      ,('0xB9F8e55Ac4353e0eDD65F11B4A4384a718E78189', 'Clipper')
      ,('0x1E71AEE6081f62053123140aacC7a06021D77348', 'Reaper Farm')
      ,('0x982F264ce97365864181df65dF4931C593A515ad', 'Beefy Finance')
      ,('0xdd32a567bc09384057a1f260086618d88b28e64f', 'Ganland')
      ,('0x13c716188c38ce27b9b2b672a59543cf1170eabe', 'Alchemix')
      ,('0x2d356b114cbCA8DEFf2d8783EAc2a5A5324fE1dF', 'Thales')
      ,('0xa7ECcdb9Be08178f896c26b7BbD8C3D4E844d9Ba', 'Abacus')
      ,('0xf01121e808F782d7F34E857c27dA31AD1f151b39', 'Paraswap')
      ,('0xE89CB2053A04Daf86ABaa1f4bC6D50744e57d39E', 'Backed')
      ,('0x79f5dc19bc96ec1db776d39535bde169e67e33f4', 'InsureDAO')
      ,('0x3b410908e71Ee04e7dE2a87f8F9003AFe6c1c7cE', 'Reaper Farm')
      ,('0x7AFAc84bF3931B11548ED02b4460ad754cF54C66', 'KyberSwap')
      ,('0x056c7933D2f25904787bb92C26E9f90655529f8E', 'Adrastia Oracle')
      ,('0x26Ce2091749059a66703CD4B998156d94eC393ef', 'Fraxswap')
      ,('0xc5584892F5B81C58D0547891641a91c245C26209', 'Firebird Finance')
      ,('0xD927cE147f098cE634301e6c4281541b1939a132', 'Beefy Finance')
      ,('0x6539519E69343535a2aF6583D9BAE3AD74c6A293', 'Reaper Farm')
      ,('0x000061c160273811279508582A4AfaBc263D98d2', 'Galxe')
      ,('0x985A29E88E75394DbDaE41a269409f701ccf6a43', 'QiDao')
      ,('0x7E8A8b130272430008eCa062419ACD8B423d339D', 'Rango Exchange')
      ,('0xC7f8D87734aB2cbf70030aC8aa82abfe3e8126cb', 'Premia')
      ,('0xDa2d96eADAb3671D9DFC6b2901aA85E99F8f0EB3', 'Ripae')
      ,('0x952e9c6391d9C0f6C6174D395Aa9B4eC1030335A', 'Tarot Finance')
      ,('0x6A6B51FcB0217521601237227FA2E43a95eC06b0', 'KyberSwap')
      ,('0x1BA608D6a354fbEb41FD7cC799e7f09b2612AB26', 'Iron Bank')
      ,('0x725Bd51dCCD08272C63eFdC1a5112002da0C5540', 'Velodrome')
      ,('0x1826316Aec2F2D400086B3cAdfCb291238010efA', 'Homora V2')
      ,('0xf8Bf80beB4cEe030d8C60e5942CA3749aE6beDF1', 'BlueSweep')
      ,('0x94B90d0362D32AA14314D666A8968e1247508dfC', 'Hidden Hand')
      ,('0xa3102370655EfE1b29De7898A85bF7Fef3f1fB8a', 'OptimismPad')
      ,('0x1a86596A4F3398B6c44232ba1716e20e88205A40', 'OptimismPrime')
      ,('0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77', 'Jarvis Network')
      ,('0x1e7b390149Abb3B891e0a7027E111188032D4540', 'RadioShack Swap')
      ,('0x4C3490dF15edFa178333445ce568EC6D99b5d71c', 'Reaper Farm')
      ,('0xf0974c239b7d08b7240b690b69ec3dd8ae783efc', 'Apetimism Launchpad')
      ,('0x5cb01385d3097b6a189d1ac8ba3364d900666445', 'Overnight+')
      ,('0xA52fECFe3F0D4a77A572dec9B72277abC5dFD9c6', 'NEX')
      ,('0xb98d4d4e205aff4d4755e9df19bd0b8bd4e0f148', 'Fuji Finance')
      ,('0xFb59Ce8986943163F14C590755b29dB2998F2322', 'Sonne Finance')
      ,('0x5bd973c3841b754386963abb117ffc796041aecf', 'OpenXProject')
      ,('0xB32D9aa786E4f53f9484539cF44B1E092F94D483', 'Quest3')
      ,('0x7a6468F8161ef39d7639c67DfA5637BA1b7ba74B', 'Alchemix')
      ,('0xC6387E937Bcef8De3334f80EDC623275d42457ff', 'Yearn')
      ,('0x4B9f696c998f9549485a3a85DcA692Fd6CCE491F', 'Flashstake')
      ,('0x652c46a302060B324A02d2d3e4a56e3DA07FA91b', 'Kwenta')
      ,('0x5E28ffE6700C6643747f51349d7246202F1a3F25', 'Odos')
      ,('0x2cc7A5c9D8AcA37395155cB200C98bA3b3516952', 'Atlantis World')
      ,('0x810973bdC95221817c4Ca7999A78aFD25F6d0F6d', 'KyberSwap')
      ,('0xC42e9476b0a458097087336e2395Dbf45B0BdC12', 'Pyth')
      ,('0xdc7c7f0bea8444c12ec98ec626ff071c6fa27a19', 'Votium')
      ,('0x11F11121DF7256C40339393b0FB045321022ce44', 'LiFi')
      ,('0xcde47c1a5e2d60b9ff262b0a3b6d486048575ad9', 'OP')
      ,('0x59ca05674f5073f95f292aaca2d28a7dc80f12d6', 'Mirror')
      ,('0xedcd79f34db8b78cd7a55e04dbf991ecd1a5c0f4', 'Zeroex (0x)')
      ,('0x48cff7ff77b2bf83e4a6f843b5b1709601671e83', 'Clipper')
      ,('0x1a3daa6f487a480c1ad312b90fd0244871940b66', 'Quix')
      ,('0x8df57e3d9ddde355dce1adb19ebce93419ffa0fb', 'Revert Finance')
      ,('0xccbdbd9b0309a77fc6a56e087ff2765ff394012e', '1Inch')
      ,('0x819addc3dd780704ae85ea12c18252f7020c24d0', 'Synthetix')
      ,('0xbf70200dd73d5f3aafa4f0d8adacdeaf3798b7f9', 'Cryptovania')
      ,('0x719dafe0be7abf7d2b6c67eed4fa18d970d3abb6', 'Unidex')
      ,('0x2c01f405e3c525c0cb867789aaf077f3553ccbb7', 'Lido')
      ,('0x302d2451d9f47620374b54c521423bf0403916a2', 'Synthetix')
      ,('0xfda462548ce04282f4b6d6619823a7c64fdc0185', 'Angle')
      ,('0x9aa99c23f67c81701c772b106b4f83f6e858dd2e', 'Hop Protocol')
      ,('0xbcb909975715dc8fde643ee44b89e3fd6a35a259', 'Furucombo')
      ,('0x42405d66fda09dbdac90ff25fc5a4c2353f43e70', 'Beamer Bridge')
      ,('0xe029c32d412972C5F3D107DA6d6eCF8F1C1E788C', 'Kwenta')
      ,('0xcd526ee406bc8349ba8135758cee11fa3aaa59a0', 'OPX Finance')
      ,('0x4023ef3aaa0669FaAf3A712626F4D8cCc3eAF2e5', 'Pickle Finance')
      ,('0x370880694995Aa8A53F71645F7Bec3b0e7bb25d9', 'OneRing')
      ,('0xfc8367ef6bcfc10746e5b9b034314812db8d7213', 'OpenXSwap')
      ,('0xafd91ef047189f7e894d0fac71dcce8687e9b893', 'ECC Domains')
      ,('0x0E1B5AB67aF1c99F8c7Ebc71f41f75D4D6211e53', 'Socket')
      ,('0xd531795282a1d7857faf43416b4c135759db45c4', 'Sided Finance')
      ,('0x2dA7e3a7F21cCE79efeb66f3b082196EA0A8B9af', 'OmniSwap')
      ,('0x0c6c8f014d1B3E37F470d39356379E220e4Beb67', 'Resonate')
      ,('0xe25831C97aC161AD58aEf70B6ceE507B0E49688C', '2Pi Network')
      ,('0x8888888841B669313CdC735910214313d7420E25', 'AcryptoS')
      ,('0x72c1a1c24917eef19e7f5dea146d950841f37662', 'O3 Swap')
      ,('0xfb41cbf2ce16e8f626013a2f465521d27ba9a610', 'Beefy Finance')
      ,('0xbA22746D79E75931DD8C0336760332E5D4a372a5', 'Curve')
      ,('0xA80481E3f9098602954B2E5cf306e6dEE053EF3E', 'Gysr')
      ,('0x3cD76a3E1Ae288c11459b986362ff2f63Ba0A379', 'Opti Stickman Club')
      ,('0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f', 'Woo Network')
      ,('0x2C10aC0E6B6c1619F4976b2ba559135BFeF53c5E', 'Powerbomb Finance')
      ,('0x0f3BF5c241B6625C0fA781ED137fDe6786b2e66f', 'Lemma Finance')
      ,('0x43834c6A65C64a4529E048Ba55a685fF5Aa43cB4', 'fBOMB Finance')
      ,('0xc82c018dB54B894853cACb878D0F3e481E8C6b96', 'Via Protocol')
      ,('0x4401A1667dAFb63Cff06218A69cE11537de9A101', 'Clique')
      ,('0xF3808680917524CD1346b12e4845830076eB7001', 'Teahouse')
      ,('0x4dc45eAc9eE25Af88958c94461fd46175C47744a', 'Geo Web')
      ,('0xade09131C6f43fe22C2CbABb759636C43cFc181e', 'Connext')
      ,('0x4b327372A347aD97e45881428af26a4C28840C66', 'Metamask')
      ,('0x75ee82787c548daeac58af6cba5bd2a9ff863d28', 'Flipside Crypto')
      ,('0x745748bcfd8f9c2de519a71d789be8a63dd7d66c', 'Curve')
      ,('0xe0774a09b55febaf93049af328901f7a5b09827b', 'Woo Network')
      ,('0x413a8ba5175efd5f770e372d0ae91cf04a9473e3', 'Woo Network')
      ,('0x7D0831e0469e8b48e0F280459bC2CC44f23Ca7E4', '1Inch')
      ,('0xCb77b30841e1dEafFd88bA08B9654C667F80b80A', 'Quadrat')
      ,('0x001530e763FE9De4DCfe31BBd8548BCb579Ebf3A', 'Defiedge')
      ,('0xD8fA8F87129c654a6Dd7F34EEDAf58379E176eb1', 'Uniswap')
      ,('0xf09c27934A92c56c7C0dD6cBAc858C35fBd5170f', 'Scion Finance')
      ,('0x41BA3387E1a5a592E27B9EE33935957CE5F872C1', 'Avault')
      ,('0x86b86c24c7b1f404ada8b4000acbe04158e096bd', 'Defiedge')
      ,('0xf708929CCfDed4142420592caAef42bD41C8a367', 'Champion Finance')
      ,('0x221a8Da83f675f1Fd97105a5B2B3bb65916a5101', 'Rabbithole')
      ,('0x35a8e8ed19122f6707984e7c135c0d8943d4d750', 'OKX')
      ,('0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3', 'Wormhole')
      ,('0x44cBfc3Ce762fC0Fee9Ddd6372804b7B660176bC', 'Mux')
      ,('0x7f4537349A0a40cd20ba5Af0D11fdC46dCFCBB3f', 'Zonic')
      ,('0xDcdE7a069dEEe7b73A795A76F97Eb9dca7f812d4', 'Connext')
      ,('0x42004661285881D4B0F245B1eD3774d8166CF314', 'Optimism Governor')
      ,('0xF285E70Ca2002b796A575E473285282BBf39D790', 'Omnisea')
      ,('0xFbe304258DCf193b9a320541985e2078ddB34287', 'Decent')
      ,('0x93798ef7e3a621d7c4eff22eda50b931fe57a3cf', 'QiDao')
      ,('0xcD0b087E113152324FCA962488B4d9BeB6f4CaF6', 'NFTEarth')
      ,('0x607291C9B3b03D8C2DC1F5f7F8db2B6A06C91183', 'Tide Protocol')
      ,('0xEe312dDc7aCE9F08728241BF2693B67D3428271B', 'Aloe II')
      ,('0x33d73cc0E060939476A10E47b86A4568c7DcF261', 'Coinvise')
      ,('0xcD6596071e9CB8FC358796F2839A5704496795F9', 'Superfluid')
      ,('0x71a15Ac12ee91BF7c83D08506f3a3588143898B5', 'DefiLlama')
      ,('0xb48bC8FBB6283740389eF69eac58FBEE07d42f1A', 'Clipper')
      ,('0xF26DdF26623e8Ae83f78012a48d24704AD175431', 'OpenOcean')
      ,('0x6453bD91C3B06DCC24F588FFfa384b0EEB0178B3', 'Beefy Finance')
      ,('0xd8693368d37b502ed54c315e38efde7eb3dcdb5c', 'FunDex')
      ,('0x30B12942912Cee5A719edec2dD147224fCC373A0', 'Mummy Finance')
      ,('0xe61Bdef3FFF4C3CF7A07996DCB8802b5C85B665a', 'Exactly')
      ,('0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090', 'Kyberswap')
      ,('0x76d84163bc0bbf58d6d3f2332f8a9c5b339df983', 'Otterspace')
      ,('0x5e9Bf1dD74b4d25B7009AF11582f537b08eA3d3c', 'Layer Zero')
      ,('0xac789308a29783f507f1f3baacbd43326c5767f4', 'Gamma')
      ,('0xba32a3d407353fc3adaa6f7ec6264df5bca51c4b', 'Arcadia Finance')
      ,('0x280333C41A9302448EbC070eD0300ad2Ed4B8244' ,'Transit Finance')
      ,('0x8a700FdB6121A57C59736041D9aa21dfd8820660', 'Orbiter Finance')
      ,('0xe00691e65Cd4400c84a174a4C56f20bA43dffD89', 'Ethos Reserve')
      ,('0x4bb4c1b0745ef7b4642feeccd0740dec417ca0a0', 'Sushi')
      ,('0x15051107651f3420144d3a2412d49402c2fac3c0', 'zkBridge')
      ,('0x2313f80d53c649c7b2c9c4d101b796f34cbe80f3', 'Wido')
      ,('0x18606e2ABaA0bA15Cc1D0D3b55521bD2247e4d2E', 'Layer Zero')
      ,('0x6879fAb591ed0d62537A3Cac9D7cd41218445a84', 'zeroex')
      ,('0x076d6da60aAAC6c97A8a0fE8057f9564203Ee545', 'Aave') --BGD
      ,('0x015D83637A6904CB13C93068a48887F9ACD7EEF5', 'Odos')
      ,('0x45208e8d6d09d6bfce5094083ab36f22bdfc8456', 'Layer Zero')
      ,('0x014040C6A9cd6366f8fa858535b7DdfAc507dB20', 'Zerion')
      ,('0x05182E579FDfCf69E4390c3411D8FeA1fb6467cf', 'Paraswap')
      ,('0x86791C7b7Ea5F77b1612eCc300dD44ba3A1C9083', 'Socket')
      ,('0xFBE184415F4893e4E9F918F5E0e22D759c9794a7', 'Socket')
      ,('0xDc6d6f9aB5fcc398B92B017e8482749aE5afbF35', 'Hypercerts')
      ,('0x39F0bD56c1439a22Ee90b4972c16b7868D161981', 'zkBOB')
      ,('0x1Dc662D3D7De14a57CD369e3a9E774f8F80d4214', 'DODO')
      ,('0x42f4802128C56740D77824046bb13E6a38874331', 'Chainlink')
      ,('0xAf66c75FDA4ca9546920A4F7270265ADfB90F43D', 'Collab Land')
      ,('0x02302cf47fa39f8ca2f1442259016befb3595c67', 'Optimism Name Service')
      ,('0x3711Ae92429CCef7581C4C6eFE0cf6042bA0b1E2', 'Curve')
      ,('0x51EdB9Cc0A86A32870753E4dE2C363aeFcC25D8C', 'Tellor')
      ,('0x4BbbDF6562daf495Bc2eb8114b990aD95E1177F6', 'Via Protocol')
      ,('0xe8dD38E673A93ccFC2E3d7053efcCb5c93F49365', 'Socket')
      ,('0xa63e6102719a36562860a804f9020018c1683c7a', 'RedKoin')
      ,('0xED20c81Dc8A28769eA14E3FfbD782967Cc53BB28', 'Layer Zero')
      ,('0xa990077c3205cbDf861e17Fa532eeB069cE9fF96', 'ERC1820')
      ,('0x81b7e9d8409b857d70ad14073e785c486945caf4', 'Optimism Ape Yacht Club')
      ,('0x594da37b691ed83a994cE934C64844E94B9A1997', 'KyberSwap')
      ,('0xd22044706DeA3c342f68396bEDBCf6a2536d951D', 'Eden Network')
      ,('0x8FcBA7279af1d5d12C77e7062cAf1E09A0623f97', 'Hundred Finance')
      ,('0x01c28a1b29098175fd5c74f6dd9225b0853325fe', 'Layer Zero')
      ,('0xb67c0cde9974275836e77fac65bcbb5055d356e9', 'Fire')
      ,('0x98422d38f6c408d0224b8fa4588b807ca5e66b17', 'Galxe')
      ,('0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb', 'Union Protocol')
      ,('0x4A21C588c93c38833BCf3c0fe0425bC114Fe8271', 'Socket')
      ,('0xCbE0EDD07345A98542d779e1f6b897103eEa0aB5', 'Metamask')
      ,('0xc522c16e88b6bf457389566d22550bce157d3875', 'Bitkeep')
      ,('0x39cfca7b389529ac861cbb05add802e5b06e5101', 'Kwenta')
      ,('0xd61fa937b8f237901d354f48f6b14995fe468bf2', 'Pixelpooly')
      ,('0x60e1980343558c4c9d8f323f45d3e0e256bdb16c', 'Mirror')
      ,('0x8321926c8aae281ef9d8520a772eb1d94a9ec6dd', 'Velodrome')
      ,('0xc82Ea2afE1Fd1D61C4A12f5CeB3D7000f564F5C6', 'Valha')
      ,('0x54812dBaB593674CD4F1216264895be48B55C5e3', 'Cask Protocol')
      ,('0x74a3c8511e709b6463adeed6ec1b273886cefc13', 'nftperp')
      ,('0x904a08be742bd5bc6ad10f0924f06b0b23d1175c', 'AVT')
      ,('0x6102D098C063A1f282A9196428946D4E3a7BB754', 'Mirror')
      ,('0x000039DdCF1F63Cf3555e62a8D32a11bD1E7E1E1', 'MesonFi')
      ,('0xaD031EeE55f595dF6Dbd61e9ef3B908FaD1B3671', 'Zora')
      ,('0x6Cb6D9Fb673CfbF31b3A432F6316fE3196efd4aA', 'Mugen Finance')
      ,('0x0F26f9E5C297d411768D4daa43F12533f59BAEe7', 'Mugen Finance')
      ,('0xA2bb05D03E77978d01aa9AeC76eB162a1bDEbbd8', 'ReHold')
      ,('0xa3E00f22EAa8e6f751a32FFED4010DCebD00450a', 'LuxsFi')
      ,('0xc9a88f94652bb5ec763e4cca7cf112d459e12c6b', 'Dexilla')
      ,('0x7754d8b057CC1d2D857d897461DAC6C3235B4aAe', 'Dyson Money')
      ,('0x7DF0808CFD89Ea3995af99CB1374D2907C2399b6', 'Ante Finance')
      ,('0x080f08076e8EAdC66006C3CbFEd28a34918A1fA6', 'RigoBlock')
      ,('0xdeD212B8BAb662B98f49e757CbB409BB7808dc10', 'Swapline')
      ,('0x0776752096BAfc4e86E5Aa46Cf8620c2e3Fb67cc', 'Steer Protocol')
      ,('0xa8863bf1c8933f649e7b03Eb72109E5E187505Ea', 'Manifold')
      ,('0x8636fa411113d1b40b5d76f6766d16b3aa829d30', 'OmniX')
      ,('0x8ac863a9142781378ed302ab96105cada1697e85', 'Perpetual Protocol')
      ,('0x44FC6f6c8e7F4BE9e59a677BEE5Fe4FfB48AD07e', 'Optimistis World')
      ,('0xfffffACc41E00f96F6af4AF0154AD18749C9d5eA', 'Kresko Fi')
      ,('0x76ef4b28df1f590db4cd680675d734c27caa32ba', 'Rocket Pool')
      ,('0x6b8a8035601da0c9d31c5fc11fa66aae485654fc', 'Cozy Finance')
      ,('0xa2bcad247c64da44739e141b491fe4238a4d0480', 'Lyra Finance')
      ,('0x7d5501e0bc56d0e4de909b748f48c768c9fde841', 'fxdx')
      ,('0xdeadfed00b7848545d8fe5cb4e7c51ed37e5a2fa', 'Holograph')
      ,('0x0c8af56f7650a6e3685188d212044338c21d3f73', 'Holograph')
      ,('0x6dcb5e43b05918505f65bf423088af172c32be33', 'Symbiosis Finance')
      ,('0x9088b976e9542d0a27f4f9ddc7a716c7714806ea', 'Extra Finance')
      ,('0x074a2bb7686da8dacad178aece2ad280b8d4c25d', 'Minereum')
      ,('0xb6235eaeadfa5839cda207b454d98b328dfe2f3a', 'Syndicate')
      ,('0x946e9c780f3c79d80e51e68d259d0d7e794f2124', 'Uniswap')
      ,('0x156d8fac8cd3deb51ab194d906abfc81cf323c11', 'Minerva')
      ,('0x169e2ffc1c6b229b04e65a431434bf0e8ed9563d', 'Vesper')
      ,('0xe7a9ecdb56af2bb86fdaaa3e3b2d1f0f7a9fe664', 'Another World')
      ,('0x017F8Ad14A2E745ea0F756Bd57CD4852400be78c', 'Rabbithole')
      ,('0x6a0a93cd6d6fb7a36bf6234ef4650bf9474e7682', 'Gelato')
      ,('0xa66cdda1817c85ed3d232a5affd17673e933d8a7', 'Sound.xyz')
      ,('0xB8Cd93C83A974649D76B1c19f311f639e62272BC', 'Axelar')
      ,('0x98b2920d53612483f91f12ed7754e51b4a77919e', 'Axelar')
      ,('0xE86375704CDb8491a5Ed82D90DceCE02Ee0ac25F', 'Axelar')
      ,('0x9ebC8E61f87A301fF25a606d7C06150f856F24E2', '0xSplits')
      ,('0x15bc81b35a8498cee37e2c7b857538b006cecaa5', 'Cinch Protocol')
      ,('0x7EEeF54Df0596633dbf6Fa3C88dEB1E3eA85ECE8', 'Metronome')
      ,('0x5472Cf4F1bE2aA6ad27C6F93101f7899cCAdBaf7', 'Rhino.fi')
      ,('0x8de39c1Fa14b6082053e7cD937d6Ebe58A69D6D2', 'KyberSwap')
      ,('0xfB3485c2e209A5cfBDC1447674256578f1A80eE3', 'Abracadabra')
      ,('0x085909388fc0cE9E5761ac8608aF8f2F52cb8B89', 'Interest Protocol')
      ,('0x3d4316342acd2deD06507302404e9788fF5F4d02', 'Squid Router')
      ,('0x19df27089a52ccfa444ce5a73ef86403d03210d4', 'Getaverse')
      ,('0xBd9d5319691922e2e1F9DC69ce0Fd0B0ded51656', 'Manifold')
      ,('0x3B52ad533687Ce908bA0485ac177C5fb42972962', 'Manifold')
      ,('0xB8cEF765721A6da910f14Be93e7684e9a3714123', 'Allo Protocol (Gitcoin)') --Gitcoin Grants Stack
      ,('0x123694886DBf5Ac94DDA07135349534536D14cAf', 'Threshold Network')
      ,('0x956a5152D0f498dBA0c5966577bb44262F8F7078', 'OP AttestationStation')
      ,('0x9c6373de60c2d3297b18a8f964618ac46e011b58', 'OP Citizens House')
      ,('0x1a5309f208f161a393e8b5a253de8ab894a67188', 'Bond Protocol')
      ,('0x07537D4360aF2489FC1Ca086EA9741c054d804de', 'Velodrome')
      ,('0x8fa9aa69a6e94c1cd49fbf214c833b2911d02553', 'Cian Protocol')
      ,('0xD56d253d6ad8C2164Eb35B2D7D8b951fe8380027', 'Merkly')
      ,('0xBE2F0354D970265BFc36D383af77F72736b81B54', 'KyberSwap')
      ,('0xc496Dfe5da45263742cdCe69BE460c8a90dF141E', 'Essence Finance')
      ,('0x7492ce19d83b3a0BaC1BEBC9706ce0dF4ADD105F', 'Curve')
      ,('0xC253Af7B80F3DD3d469bf4b94AA9e3df59e71e43', 'Inverse Finance')
      ,('0x6Bd10054c59Febf0CF7c0f5359D036A997E93810', 'BlueNorva')
      ,('0x6fF5723435b7dfC2371B57Fb5cB4c373E5995C78', 'Bored Town')
      ,('0xc82Ea2afE1Fd1D61C4A12f5CeB3D7000f564F5C6', 'OKX')
      ,('0x86c5608362b3fbbeb721140472229392f754ef87', 'Worldcoin')
      ,('0xcb21ed4ca5c5fff8b1e21ddb7bbff8c6546ce5e6', 'Coordinape')
      ,('0xeac5f0d4a9a45e1f9fdd0e7e2882e9f60e301156', 'ScopeLift')
      ,('0xb9e4162c27860fc81379c4a30f7288ab9deac164', 'Metalswap')
      ,('0x838912bef2424e40919965dc7e0b02ba147e6744', 'Cloudbase')
      ,('0xe003b3fdb26d0d574b860212e07202c151ee0d24', 'NooBys Swap')
      ,('0x3D5a771e690Af1Bbd854Df638eD945baf1066ED0', 'Collab.Land')
      ,('0x03be6a29022c134762423b4cdd78b970bfa2691b', 'HotPots OP')
      ,('0x8fE3a2A5ae6BaA201C26fC7830EB713F33d6b313', 'L2Marathon')
      ,('0x12ddBd16175953a8035A009393482DD64849959A', 'PHISHING CONTRACT CREATOR')
      ,('0x057dd0333d0ef737c72ca39403e7d478b1f1d0b3', 'OP')
      ,('0x30019eb135532bddf2da17659101cc000c73c8e4', 'Aura')
      ,('0xB07d2d6a03F2d4878Dc1680F8581E871dae47494', 'Aura')
      ,('0x8cF905C50F25A481171e7f5936625754d44A9537', 'Stackup')
      ,('0x00e6202a8A52a3De6Ce7c45F2e5E299Ec71e875e', 'Candide')
      ,('0x4325018916b082B91e277C7165FD8Da6467b71F8', 'Fuji Finance')
      ,('0x0B5a3C04D1199283938fbe887A2C82C808aa89Fb', 'Summer.fi')
      ,('0x7d896339a80dd38bc3bbb04383894c62b2ef2585', 'Worldcoin')
      ,('0xb02748d3eee8691c94b7c8d6788776aa52571628', 'Hidden Hand')
      ,('0x9DB006063ee2049a35624bCCe32945E524105401', 'NiftyKit')
      ,('0x682bd405073dd248527e40184898ed45bb827527', 'Cozy Finance')
      ,('0xA58090dd84D143ca90e95B05395e0F116A727714', 'Optimism Governor')
      ,('0x9AaC739c133074dB445183A95149880a2156541A', 'OpenSea')
      ,('0x9f6798ec61a30e27f94db7e6af678d179662b27c', 'Chainlink') --CCIP
      ,('0xae0c5140744bfc6bc33ce73298f10f7b538f02dd', 'Eco')
      ,('0xb1bEF51ebCA01EB12001a639bDBbFF6eEcA12B9F', 'Sablier')
      ,('0x3c5e6b4292ed35e8973400bef77177a9e84e8e6e', 'Layerr')
      ,('0x9f76a95AA7535bb0893cf88A146396e00ed21A12', 'Angle Protocol') --Merkl
      ,('0x123E2974efC726FABc16ea729c3e84F17a788DB1', 'Beefy Finance')
      ,('0xeFd9434A2B1076D5C84D242b6f4AAb47270EcEAC', 'ThriveCoin')
      ,('0x24399266da004b11173Bb478E5Da2c1b194721bC', 'Sismo')
      ,('0x890Bc5691E6011F580e264065d09a7a1A6902131', 'Synapse')
      ,('0x161D61e30284A33Ab1ed227beDcac6014877B3DE', 'Beefy Finance')
      ,('0x5853ed4f26a3fcea565b3fbc698bb19cdf6deb85', 'DeBank')
      ,('0x86d26897267711ea4b173c8c124a0a73612001da', 'OpenSea')
      ,('0xf60F3A45c7D4476019262FC1Ff6756Fc15042F13', 'KyberSwap')
      ,('0x5401fe33559a355638b9b37c9640a04a182feff2', 'Gelato')
      ,('0xC96495C314879586761d991a2B68ebeab12C03FE', 'Rubicon')
      ,('0xe6ef45a2ef96791685cdee512f36f16ee85d891d', 'Aave')
      ,('0x35E0C852FcB9534df65D03877c1238f8E59c53FE', 'Paraswap')
      ,('0xf3d63166f0ca56c3c1a3508fce03ff0cf3fb691e', 'Reservoir')
      ,('0x9098b50ee2d9e4c3c69928a691da3b192b4c9673', 'Aura')
      ,('0x71F718D3e4d1449D1502A6A7595eb84eBcCB1683', 'Curve')
      ,('0x383Ea12347E56932E08638767B8A2B3c18700493', 'Hundred Finance')
      ,('0x8286dC6dF929C4BfA4f6951caB4dAe2EC02d4D72', 'Hundred Finance')
      ,('0xB45cf380FF9A33c2bf7c41043530dc8Bb2e5295B', 'ChainX')
      ,('0x4c276F7FF3893a68cc9A947544B32E9F1e6d9912', 'Nouns Builder')
      ,('0x78357316239040e19fC823372cC179ca75e64b81', 'Pyth')
      ,('0xC8834C1FcF0Df6623Fc8C8eD25064A4148D99388', 'Holonym')
      ,('0xfC8d2f6d1937cd4CcAaD5c26FBB42a3dfc9dAc85', 'Gravita')
      ,('0x96d55BD9c8C4706FED243c1e15825FF7854920fA', 'Worldcoin') --WorldID
      ,('0x78d4BDEBc0B4140f01BAB63085F94A5a7A1294f2', 'Yearn')
      ,('0x0B634A8D61b09820E9F72F79cdCBc8A4D0Aad26b', 'Yearn')
      ,('0xAEDdC8B2aa5E331B53c22F1da8069c18d02eF6ac', 'Gitcoin')
      
  ) as temp_table (creator_address, contract_project)
)

, mapped_list AS (
  SELECT
    address AS creator_address, project_name AS contract_project
    FROM {{ ref('addresses_optimism_grants_funding_legacy') }} pro
)

SELECT 
  creator_address, contract_project
--filter out creators that we never want to map
  FROM (
    SELECT creator_address, contract_project FROM curated_list cl
    UNION ALL
    SELECT creator_address, contract_project FROM mapped_list ml
      WHERE ml.creator_address NOT IN (SELECT creator_address FROM curated_list)
    ) f
WHERE f.creator_address NOT IN (
   SELECT creator_address FROM {{ ref('contracts_optimism_deterministic_contract_creators_legacy') }}
)

GROUP BY 1,2
;