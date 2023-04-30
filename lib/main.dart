import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
                width: double.infinity,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white38)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: const [
                      Text(
                        'CITY UNIVERSITY OF PESHAWAR ',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 400,
                      ),
                      Text(
                        'HOME',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'PROGRAM',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'APPLY',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'ABOUT',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blueGrey.shade900,
                    width: 5,
                  ),
                  color: Colors.yellow.shade200,
                ),
                child: const Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'data:image/jpeg;base64,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',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'HOME',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blueGrey.shade900,
                    width: 5,
                  ),
                  color: Colors.yellow.shade200,
                ),
                child: const Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBAPChAJDxAJCRAKCAwJCQwMCREJCggMJSEnJyUhJCQpIS4zKSwrLSQWNEY0OC8xNjU1KDE7QDs1Py40NTEBDAwMEA8PGBESGDQdGB0xMTE0MTE0NDQ0MTQ0PzQ0PzQ0MTQ0ND80NDQ0MT8xMTQ0PzExMT8/MTQ/NDE/MT8xP//AABEIAKgBLAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAACAwABBAUGB//EADwQAAIBAwEFBgQEBAUFAQAAAAECAAMREiEEIjFBUQUTMmFxgUJSkaEGYsHRFCOx8HKCouHxFTNDVJJT/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAJhEAAwEAAgICAQQDAQAAAAAAAAECEQMhEjFBUQQTYXGhIjKBFP/aAAwDAQACEQMRAD8A+YkyryweI66H6yHpx87Yz0TAn92kvy87yuUq3LU36QAl5JCPUXF5bcbgKt9cVvivlrACgISJkCFDuw13fl9OJ4yBt3GyaurZW31tfQHprw8hBBN76jW9x4vUR4BVpclpVowLJkvJbnpr0EgEWAS/tf8A1SSSQwWkHXUekkuS/LXWGAWoBuDkDp3drY5XHEngLXg25aadDJaWenThDAKkMuVbnDACZSDYgrcKQCMd0i4P0gyAfeFytYaG5bXLHp0/5hgFSFd0NyJZb3Hi/siVLY3JJ1LG5MMAEj18pR+ttB/hhHp9pLcuEWBgBkIhlfXzvCItqcR8I+ZvOTVKV2UkxaEg3FweRh4W16CXTxO9rpyEF3F9S4zFwp3pnV5iXyWp67KB3rHEiy6j5pA9iCLbp4xLnUnXyv8ALFg+n0mSuvWj6NxdQRr4uH5o4D314W+KYgx0vfdGk00Xv+g+X3m002+ylgxhrY6W0ItjjFkRh+so8PtaWhUircPtrGLa3OLAhQaJQjn+8n6i0hHqZJRmTy09fmkAPK/kR4lkktKEVblKtCAl0wuQzzx+PEjL7wGkDaX+3MyAQivPXXgSMcoCwGSWRKtAZUglgS7QwRQElpdpLQwZVpAPaXjJjHgglcD4Ebzbejkem266Kl/iQ4Mv6TPaS0NaDB+07IUAqDfRzZHAx3uh6GZ7es6/ZZFRH2V9RUFrn4W5H2M59OmTU7otTS74FqjYUkbhcnlw4yqlYmvTEm28Ym32lQwJLRYMAiS0YBKtFgYQ1W7ruN3AVWq2wGWRAHG17WHC9ucirfXj6yYxlM2N7BvIyWuui1+4LpjkLXx428Uwm7Ne5PrOnUbcuxLX3SG+Ocw6fLroSJxXTbxvtFtJeg0chGW9vCdGxyis+ZtpFkyjJb9BpZPvIJVvUSQ0Q1X5RiVefC2kziEIJtDTNKvv3N/fw5TWjm1xu5oykflPKJoBSg1VuYBPhbnHETphPNbBsEmXf0lhb2AvrCZBpofCL73OaPCezOR6i+ssjl0lE6wpWEFeUq0u0sCMAR7G8KQCF+sWDSF2lj/aGOQbIgHgDvY87QSJSQmQEgEfNjfTpKtDC36maqHZtep4KVep5rTLRpBmmMCS3pOqfw/tn/r7QPLu96Z9o7Nr0/8AuUtop+bUnVfrDAaf0YrS7Q8faTGPBYBaXaFjCAhgYKtJaNtLxg0PB/ZZtWHmbGIrb1R2Hx1WYe5jKZwBI8TCw/L5wAse5KQJdgmmQbG4I0IIxZW6SAcoYHEWU5C1yMsdeUJQbW6m9vzRFJaxYWTHlr1tHYep042+KQrJKUigmthvX6b0t6ZXRgVuL2PyxynF890WPXFZi2itk9xkeZ0/WYcnK5pJLUUpWdhbSLUydOGNreK56zmuOWnHlNlXaydDYWKkBd3G0zgg6m/G/wCac3JSb1IT+hBHKWo5yOdel+hkA5SX2IE9OMgH2F9Y9aDHUAn0EUwtGuh4wRLBlH3kEBD6fG/SdFCCmWgv8M5yH2mugmRtr1v8s046aeFJaaAlrHQ35D4fWRhrGFOU0UthqVFzRHdfCGHAzqDxZzCOJ4a8LSW59YVveXaUYtA2kA9oZHv0NscpdveAJCwJZEO0gHLjGkUABebdn2MHec4Aa4r42/aDTUJruhup+H0lO/O4b3lakSzpU66U/Ai07DxFM3+pjh2s3zVGtqLtOGXPC9+gglvOH6n0B6an22/LEW5DemzZ/wAQOpUE0+PBh4vWeNDn09IxKpvzNusFyfaKVNfJ9BNPs/bVtVpUqDsNa1C2zvl5jgfcTz3bP4UqUA1agx2uku8WVcalMdSBfTzF/ac/Z9rK6+HXh4cZ6jsPtohgrMCvDU737xrH2ik0+meGw5cJYTnrpxNvDPf/AIh/DabRSPaOyKocDvK1BBu1l5lRyPUc+U8R3LDQ2T/EcftEnoOfFmfGFh9xeaRQFrnM+i4r9TCwUfJ7san9ICS0y4j101+HFv1lkcug6zSAvG6jXgtP4fWWP8RHqkGUkzKFnS7DfZU2pW2xK1ajgwYUiFZWsbH6zOQQbGzX4XGStI6cCNMkvb5ZLZUz3oFRVzJQMqktiGOTKvK5gYzTU2d0Kh0emalJaqBkK50yLgjyI4GDaQ2bqdM70slxsWIKsoA8TTJtFK11a114gW3W8+k69GncxtfYwid4zIyKL4FQrVGtz66ges5edNtNf9K/RbWo8m9K121sDrFljbHUaTv7bSRaHeVM6bVTqykNlYg2AGlv6ThVOvK7YXGOSzHViOe58XgpAfFqfaOR/JRoy3A8V+sOilxa19Lg+HG3HWDUUq+BVhhrUXwsvrDXpKTXZo2d8RlezWUIwO8ky1jck9Sx0gl/66C8Bjyj1voG9WAmSWBDC840hYRDOpsFtRvEkZE/Cvl6zLsqC9yFfTgZ1adIIugwyGoE0413pcp5pRk4aQ7fcWkxJ11nRozGBJaNKamxyubgD4VkCQi1S1EOceAYywhGttAbXI3cuNp3ex/w5tG2U3eiua0ULMQPi6es5VamyMabZjF7MpPxcOHWaBU4tMxEsaaxhWDaPTNoAn1MG0cFkxiDBNpMY7GEKJOvC/MwwMM1pag8Bc35DemruVXjr5Hd+w1/pKLW0AA/0r9B+sM+ySqSHgbL/qZfab9ndUYG+R5rfLL2H7zmsSdPt8P0jaTkG+vpBPAw+g/h/tMIEJYICVBLbuOumkxfjfshadRe0aFlpbUf5qoMVo1+N/RtT63nD2HajbLTQWsd5WntdgrJtuxPsNSyd5R7tMvFTYcD7G0b1/5I0l70z5zjz4+u9CA0tpxvwj3pFHamwxZHZWX5WBsZFTnE2bTGmfCMCR+AsAAQd67X3WXlpy5/WEiSXXRpPH2JZOWu7x/M3lKty8+u6s1PTvrpppwxgilrM3ZquJpiCC2pLNYBRkcsVHAektU9evCP7uEEkujVcYL/AMvEAB2YqTc4qq24X4XjKzLVGIKJqtN1J36i3BsegHW/ERrbOKtO2LM9MKVIY+H0nIqIQ2O9e98j4Zxu6VNU9LpOVmdM5naSE1XUZulJ2pqAd7EaXInNt725jend2iuRUDAKWcN3hanvdOP6jXjMNZ17qwVEJdWutMchbj/YgmsxHDcdt6Z9lFmuTji/BTiy+fAiTbkfvLv8e8CDkrr1B5iLQktbeIvc645adYymjscv/wA8ji3y+/H0jX7maWrDJ5fnuDLUXJJ5efxRpS9QEW3sjZRiqwqlApUdT/4zYj80bZKl+xSJGhBje4BB8J/rFvVLNdt703YQHO5I4cI0wxfAymxUhlNiDppNb7QxdSS9t0lScVXzmVLD5jfqJ0tiCOmD92xJsotvY+Zly/3LlN9IdQcOuQBHLX4vONtGpSCriNAJfdzTzw1XGzhbJVQsPhYnw/C06gpXFx00tvZNOCtIhu8GLeKwM6Gz7cyAA2VVTVdW9pz65eyyJaayket/D34pr7DSeglmWoGxVhktNuonD2mq1Sq1ZyWao7MxPxMZVIZi4IuRlifF9ITUipsb68DbxLOyeWW81b/YVNNbnRnZOUgpx5p8oS0uuluQ/vSap6YucEBPeGtHrp5fF/tNAAGg+378TBIvp9vhj1B4gBVXhr5+L7/tBJPpfp+/GMCS8YaHgZykEpNWEhSLQcGNkg4WmwpBNOGiclbOWBupYEdDPV/h7awtRc2IYm1/hx855emljznV7P3ag9b3PiWaS16J8Wnpq/EOzhe0KhXhUK1gR5i5+95gSnOx222dRH4X2VQR+YEznhJhTzo9CJ1JicISpG4ywkybNkkhZSQr/wAxpSWEkNpGmicZYp8veOCQgkl0ip7YFPQ3F1tzBjdp2XvcKoAc0wwKrZeJ4kc+unnLVI1RbqLSLU0s3DdSmsZgq9j5VGfu2XcbvMqgXFhxt5/vOTtPZGSMAGsT3akJljreepWsRxu4AtiT8MotT10dbvkVJzR25D2++nSYVHi1j0pcHG5aaPMnsZEqU6ZZHSqKdSojZo2g6gGwvfWak2GmLLj3lssiRh3jHjoL2nVeo5J3n3ixOsWtK5l+ST96QvxpT6Rzv4CnT2nY6ihSj7S2zVFffdWPP01uOhvM+3dld5tu2oGVBS7RcKjDddtefHkBbhrrwnX7Z2YrsA2hd1tn26lUDfLcEA/UCYexnNT+JqG7M23LUqMTvNcHX6gw80+/hHNXAlfhnT7OJ/0FjUCn+XuZOfEuvQ9R9NPOaU7KI/lgYYhd4jdbz9Z6E0uWvpK7nlrIfKvsufw0vg8+nZFhxVvDw3m4ax1Ps8q3HG3Bh4Z2u4gmlE+ZfDLX4yXwY+7ld3NW0uKNI1WsL+G/hZuk41Xa0Zi7NgSfCp0ES5afpaiLmZeM8/T0FtD6jL2ja1K4D+AVAtj8GXnL2IIbZkKc2F7jFv8AabKNXEYsFRabsbfFkSbE+uk6WknrPLmdXbFUdoamwp6IECkMo3sdbn++E7aVEqKHUsbi5z8eM8/Wdg7M5zLYqrrfOmo5Dhadbs3YyUWq7VEZgwCNZWxsLenOHjtKpfZrO65XaNZXpr6H9ZRX/j4Zp7v7SBJ1KgfHjMwSEEmgJDFOPyEoMwpyxTmoU4QpQ8yvAyCnJ3c2inLFKHkH6ZhNKCaU6HdSd1DzQnxmBKU2bMljGrRmmnS8hGrSJ/SB2kZMOeNNRAFOaylzeUKcxrkTbZ1TOJIzCnLCTUKcIUpjXIjRSZBTl4eU1ilLFKYXylqTKEhinNK0uUMUZhXPhvHGZAkopNw2cwhsp85lX5GfJspSOYaZlijOoNklnZ7dPeZP8hv5NEkc0UIxKVtZK23UUvdsyptio+KeW7R7YdyRkQt2soGMuPKmZ8nPML7O325ttP8AhG2TLVq9N3x3slANh9TPOdm9pU9ld7rUdauNyCNy19fvObX2oniSZjqVLzsnjxY37PL5vyG6VT00e/2Hb6O0aU3DEcUO66+03LSny+m5VslLoRwZTiyz2v4c7f7x12WtbI5fzWYLu20FtP8Aec/Pw1KdS9R1fj/nq2ppY/v7O8KX7RW04U0yfgxWmPzMf7t7xu37YlOm1TiAVFO5xV28+dvfhPL9qbd/LVa4p1XOW0UqoZ0dNbAAAHQec5+GL5Gvo6+XmmZbB7QrtUddmYUqaIqmkx3lYeYPDp05xNB9hQFGRmtUbBmJu6cjobTB/ECoCGLFraOFC5KP6zn1Mw1t7hpbhaepHD147mHkXzvfJJPfsQdCBfgL3tux1J7FeZB0HyxDHW99SbEW3Vtw15wsGsWG6OZPwzekn7OFaddHyAIUuL3Ogxe3WdLZ9roqMcUpY8sP+Z5+nXcIH4jdAUDdx5k+c6GzotTUaEfCfFI4120bTyOV1/Z0qnaqDREep5tuL+8wPt1R2yyKWNwqbqr+8aNjMIbCZ1zKRnVVXya9k7RBFqgt0ZRut6idakFdclKuDzU5LOEmxt0mmhs7oclzQ9VMVSn66NY5KXVLTsilCFKZqW0VhxCP6pj9xNVHar6OjofynJZk5pHSqllilCFGGdouLIhY9WbH+kWtWspuUpuL6qAVb2MEqwHUoMUZfcTRTrqfElVP8ua/abKNJXF1IP8ApZfaZVVT8AnL+Tmrs8clGdRdlEcmzDymT5mUkjlChDGzzrLso4xq7LMK5a+i1SOMNmhjZfKdpdlF7Rw2VZhfKxpnBGyw02QmdwbKPKatn2AMbaDXUzmrlpvEtZX6ilazhU+z49ez56E9nlbC6m/l4ZBsljbj7TGlzbmMn/0r4ZwRsQHKX/DeU7m0UFRM20A8p4/trth1LU6SVBYW7y2K5eQkPh5Nxo04+SuR9Gjbq1Ggheo6Jb4b77egnje1/wARd5lRpLgl7Zsd9/UcLTF2hVqOzVH7xsy18vOcSsDxsRO7g/Gld09Y+SqlYHtG1ki17znvUuZVS/nFA+s9CZSXRwXbbxgu0UxjCjHkYpkbp95qmjnpMoHlwjdn2hkqB0JRl0DC2SqdDx8ooqYIlYmsZnrT1HoKnaXf1AGqFVwY3BxdrC+o4XvyEA7K9YCtULoMG1L778+HACc/stAa6hhcHiD8s1dobUz1Gp7qKm4Jkp8WlPR1rk8obrvv0LqU0QAK1RCDfJvC0Aq3Fb2OosdItnxGO62ljkMl9h+syGowNgdOImyTMnS/gIUiC1x4cv8ALNWzOH3Gs4I5qfFyE0Ps6CpixfBiwYKd9bctfOBQ2dRrqLBt5vC2ul+ktrX2jJrPQbbO2Hjuc+Ft1lIH01mvs9Fplal3Q23kAGHQXilpsdRi1+JU54r1sNY0KFUrmjhgxDCnjURhysTeXMynqQm2dIbcg5G/tCTtC/hUvbjZcsfWchgoNgzubKQQB9+M0U9tYI1MZKHC02AYqjW11A0M0bfwiVXfbOiO0bEArhcXF18X96xg7StyBFr3K4racuozOVwanRamltypivC9xf8AeZ3pud5qqVDhcA1HqNxAtwi1v2inTT6Z3l7a5bnkLeKT/rbfLTHnpPOIju/doO8IF907v3i+85/eHWj/AFKzT1C9vEck/wDkRg/Eb9EP+UTyfeyCrDr5QnyU/k9in4ibon/zNNL8QG97IPRZ4da8cm1RUp+hK632e9Xt/wA1+kanbo8p4NNqjk2ozGpj6N5pv5PeJ25yv94Y7a5frPDptRj12yc958I6YTftntU7W1udfea17UBniaG1FmxBOvQZNOh3dUAEB2z8KqpZsfPp7zh5Wtx9HbELD1Y7TX+zHU+1LDIFlsdSDPLELTUNXr09nZsjhcOzKOcw1fxJSphhTFSpkfj3U0PG051Db/x7HS4l7Z709qtbIscR8Rf9Zzto/FoQ4oxe4U5E/DPnO0/iGs4wzwRSxVV3VW/9fec47c3Em95tPBe62YquHczUfQe0vxW7rYOwsGF7zym29ruSSXdr/mnGqbaSOMxVKuWvGdM8Tb1jr8iJWQsNu09ou3xN9Zgfam6t9Yl3iWabzCXwcPJz1T7Y1q56mLNQ+cXYnTjLNN8+7xfIZArbeX2lYkc7qn2H3x6mUah6xThhowZbi4uMcpQlJIl037DLmUCSbcSTYCHQUFwGuw5geLHrbnOm3ZtXuf4qlScIgzFQ1Bm4HEgceusHSTwczVLV2M2cMxSiop0nta7jFV52J1+kXtaqjd2xQMhYnEFleZEZl3mLWcXI8TL0iqlXfJu5uOZ3mkqX5bprTXjmdkqul73JJPAKYlnsbb0InJbEob6kneaL0GmQm63DF4dwurcUx6FqmLN7QjswIuGCeR/eL2BVq10osxQO9ncWy4HhfrabO0tnSjWFNHd17pahytlkb6aekydNV4p9+zpUpzrXXoxPstQrnioA6N4fOIVnPxg462ap97TWNuKmw4cOEYNpQqQVALBgSvixlrlpe0ZVxy/9WYMnvbdcjfyDZQ+/OFrFMsdFqZK1rakGMbZENO6M6tZr38LL0md9ncaWDeanLGaLlTfsyrjqfg0bPtmKNTID96Gp1CVyaivUdDFo6Af+UlnUWH96k/3eAaQUpcsxbxqP5eHTU8+vTqYx1RWQsKjYuveqlXeZfI20OnGPz7/knxbX8EWuEYnfz3lYHdbLz53gB1Y4gKl0+KofF5S32gEjEVad/EWq98zOTe4uB5fSXTqM754Jk1VShp08WVgLWAFgL6HzI9YnXyNJvovaNmrJgXp1aPejKmGomn3i9RfjFF+XDS1hT/We123tdn2WnT2pcnSotQPmGqow0JtyNjPNdrUqIf8Akuz408jkBkzXJPD2+kxnm8njWG98HjOpnLD+sNHkIF7i2vLxLw1jlOWCBETFMXKrvPre5J5629BKq8RnMNkQk6am+gAHimizLbIOmQyXJMcl6iFswRbB+8J3bKiJm7a2OvIc+HKXU7R/m9y6h0Avc7tRmAFiep0mDtt9I6JiUtbwtX9fpNqbOyqKlS9NH8LMfE3pC2DtRFqIw7tO7dXCWy/u87m0bWm1hqlqTLTTw5eNuNtPSYVdbmYjr45l9p6cz+M2eigZS9Rxra5p/WZa34iqnwsaYu26pxxnO2vZ9Vq3FMVnYqrbjY+Q/SZn2cWN3W/wa+JecJ4pfb7f7mfJzUul0hm0bcXYsxZyTe5Mzmr5zO7WNr384WzpnVWmNM3UXPhWdCiUjmdtsMv7y6NVRUQuC6B1NRQcclvqPpNb7Vs1Ju7Siu146NUq1HXNudgLWH1hV6ez1qXe0VfZnT/uUWqZo3oTrD/jSDv7Woy9oUu62h6QOSq96bfPTOoPuCJlymrbqmaU3PiSitJvzW0H2tMc0lajOq7CUZMFuFubZHwrNVXsx0VnY0wqBcGD5LWY8AOsz7PZai1GVaiqbsrMUV/cazobX2ijsCi4J3eODAMq+kinSaxGnHM0m6ffwauyBSFFqL0KiVQys1dzlSWxuDra3Sw4zJ2jUQV3roGcmoxaqzZrUc6m2kyNtz493k4VeC5FlmepVLadOH5ZMw3Tb+S65JUKV8fsXWq5OH3VIdjp+8GwYgHTctpFjjz9oJOs2Uo5W9Hq9lw5XuW+adGnXK0SuagHTHvMcvacq/LUeVobN7aROUy+OnL6GVqttBiw8hM7uTrpb5QZAeenv8UBxbzuNJSWCqm3paHlYHmT8srG+ukgU2vp0tGKTYcOEtIk00CGqWLLTF87kb3peaDVTvjk1TaAUUZB95W/WSSQ/Zc08AYLmQmTDiMvh9YJI43PqBuySQAJKlhocgONoLVTfQkySRYin6H7Kr1GIXElEvZnC5QajWbu2AZhoQfhaSSQv9mVi8V/IOYLWsrX5W3YVTaMScUp08ipsrHcsLc/rJJLfvCV6f8AIv8Aiiagc3qEC2+SzN5X6RgKF2ZsVLfCDurcaySSB/AxDSA5OQdbndWE7nEsgAVdMrhW8xaXJIr4Kba9E2lg9mVlpNoHUneVeF/U2mfZ6tO7LUXOz3pvmcve3PzkkjmVgP2JL4vcZhRoD80bs+2vTUqrkZngN1pckppNEpua6A2vbGqIqsxfDwgjwehmZWZtDjprfRWkklTKwi6brssML6+8sPi1105Xv4ZJJbSwlewkC2JN78h8MgqkaWC+gkkiGUz30NhpeCPrfgPl9ZJIxMjtpxv0HzRLvykkksYLG46WlHTWSSMjWRT95fO3GSSNeg+QjLY6cxpJJGNABv7MomSSAFoNfQQ7jzkklIk//9k=',
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '''About Course
                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ornare finibus luctus. Proin fringilla, justo quis scelerisque molestie, nisi dolor congue ipsum, ac bibendum diam arcu in ante. Nunc interdum purus velit, a feugiat nunc accumsan vulputate. Nunc commodo lacinia magna, rhoncus sollicitudin quam ultricies nec. Sed leo metus, dignissim vel tellus venenatis, dignissim commodo lectus. Maecenas facilisis massa id quam dapibus, quis consectetur neque bibendum. Suspendisse potenti. Maecenas finibus, ligula eget gravida aliquam, leo neque venenatis ex, a bibendum tellus libero ut lectus.
Praesent magna risus, efficitur quis aliquam ut, posuere sit amet tortor. Integer congue ipsum efficitur, sagittis risus et, hendrerit dui. Morbi sollicitudin, turpis quis consectetur blandit, ex mi efficitur augue, eget maximus mauris ex et quam. Sed ut felis eu mi dapibus luctus vitae ac ipsum. Phasellus ut ultricies mi. Curabitur commodo aliquam tortor eu commodo. In suscipit ultrices massa ac dignissim. Morbi condimentum ut massa in suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum blandit ligula a magna porta ullamcorper. Quisque elit arcu, semper eu rhoncus quis, rhoncus vitae nibh. Maecenas in diam tempor, scelerisque lectus quis, dapibus urna. Ut in purus id diam lobortis scelerisque eu in nulla. Sed libero turpis, bibendum nec sem eget, porta hendrerit sapien. Ut a ipsum vel nisl volutpat dapibus imperdiet molestie enim.

Duis facilisis augue eu sagittis tempor. Aenean quis eros et turpis scelerisque imperdiet. Vestibulum lacinia justo Justo, ut dapibus turpis mattis eget. Phasellus ut vehicula nisi, nec porta dui. Maecenas at mauris eu elit faucibus ultrices. Aliquam vel mi nisi. Nullam gravida, nibh sed lobortis convallis, nisl dui vulputate libero, sed interdum urna purus at diam. Curabitur varius eu turpis eu cursus. Phasellus eget ligula felis. Aliquam vulputate lacinia faucibus. Ut euismod nibh eu augue placerat, id convallis ex vestibulum. Praesent consectetur ex eu ligula molestie, et feugiat leo finibus.
Praesent gravida vitae purus vitae finibus. Fusce et condimentum nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur consequat imperdiet metus, ut commodo nisi tristique sed. Nullam quam neque, rhoncus bibendum velit ut, tincidunt vestibulum dui. In hac habitasse platea dictumst. Integer ac interdum magna. Sed vel massa ante.
Mauris egestas elit mi. Cras ac lorem tortor. In imperdiet lacus odio, nec efficitur libero euismod vitae. Nam efficitur metus non dolor imperdiet accumsan. Cras consectetur nisl non nibh consectetur, et placerat lorem egestas. Vestibulum et eleifend velit. Vivamus malesuada vitae justo eu euismod. Nulla vestibulum dapibus risus eget porta. Aenean ornare et massa sed consectetur. Etiam ut laoreet massa, sed tristique urna. Nulla luctus enim et urna ultricies suscipit. Aliquam erat volutpat. Etiam consequat augue nisl, non pretium orci pretium in. Pellentesque a elit eu lectus molestie fringilla. Praesent sapien nisl, imperdiet vitae vulputate nec, eleifend vitae mi.
              
              ''',
                  style: TextStyle(color: Color.fromARGB(255, 234, 151, 151)),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
