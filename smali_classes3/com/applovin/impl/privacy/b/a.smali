###### Class com.applovin.impl.privacy.b.a (com.applovin.impl.privacy.b.a)
.class public Lcom/applovin/impl/privacy/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static l(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_89

    const/4 v1, 0x3

    if-eq p0, v1, :cond_86

    const/4 v1, 0x5

    if-eq p0, v1, :cond_83

    const/4 v1, 0x6

    if-eq p0, v1, :cond_80

    const/4 v1, 0x7

    if-eq p0, v1, :cond_7d

    const/16 v1, 0x12e

    if-eq p0, v1, :cond_7a

    const/16 v1, 0x12f

    if-eq p0, v1, :cond_77

    sparse-switch p0, :sswitch_data_8c

    return-object v0

    :sswitch_23
    const-string p0, "Autoscout24 CMP"

    return-object p0

    :sswitch_26
    const-string p0, "Easybrain CMP"

    return-object p0

    :sswitch_29
    const-string p0, "Axel Springer Deutschland GmbH CMP"

    return-object p0

    :sswitch_2c
    const-string p0, "wetter.com GmbH CMP"

    return-object p0

    :sswitch_2f
    const-string p0, "FunCorp CMP"

    return-object p0

    :sswitch_32
    const-string p0, "Seven.One Entertainment Group GmbH CMP"

    return-object p0

    :sswitch_35
    const-string p0, "Kleinanzeigen CMP"

    return-object p0

    :sswitch_38
    const-string p0, "mobile.de CMP"

    return-object p0

    :sswitch_3b
    const-string p0, "Google consent management solutions"

    return-object p0

    :sswitch_3e
    const-string p0, "One Consent CMP"

    return-object p0

    :sswitch_41
    const-string p0, "ALPRED SL CMP"

    return-object p0

    :sswitch_44
    const-string p0, "Interia CMP"

    return-object p0

    :sswitch_47
    const-string p0, "Viber Media CMP"

    return-object p0

    :sswitch_4a
    const-string p0, "1&1 Mail & Media GmbH CMP"

    return-object p0

    :sswitch_4d
    const-string p0, "Cookiebot CMP"

    return-object p0

    :sswitch_50
    const-string p0, "Ebay CMP"

    return-object p0

    :sswitch_53
    const-string p0, "Iubenda CMP"

    return-object p0

    :sswitch_56
    const-string p0, "AdOcean CMP"

    return-object p0

    :sswitch_59
    const-string p0, "Commanders Act CMP"

    return-object p0

    :sswitch_5c
    const-string p0, "Alma CMP"

    return-object p0

    :sswitch_5f
    const-string p0, "Sibbo CMP"

    return-object p0

    :sswitch_62
    const-string p0, "Uniconsent CMP"

    return-object p0

    :sswitch_65
    const-string p0, "BurdaForward GmbH CMP"

    return-object p0

    :sswitch_68
    const-string p0, "Consentmanager CMP"

    return-object p0

    :sswitch_6b
    const-string p0, "Onetrust / Cookiepro CMP"

    return-object p0

    :sswitch_6e
    const-string p0, "Traffective CMP"

    return-object p0

    :sswitch_71
    const-string p0, "Yahoo EMEA CMP"

    return-object p0

    :sswitch_74
    const-string p0, "InMobi Choice CMP"

    return-object p0

    :cond_77
    const-string p0, "Impala CMP"

    return-object p0

    :cond_7a
    const-string p0, "Gravito CMP"

    return-object p0

    :cond_7d
    const-string p0, "Didomi CMP"

    return-object p0

    :cond_80
    const-string p0, "Sourcepoint Dialogue CMP"

    return-object p0

    :cond_83
    const-string p0, "UserCentrics CMP"

    return-object p0

    :cond_86
    const-string p0, "Liveramp CMP"

    return-object p0

    :cond_89
    const-string p0, "SFBX CMP"

    return-object p0

    :sswitch_data_8c
    .sparse-switch
        0xa -> :sswitch_74
        0xe -> :sswitch_71
        0x15 -> :sswitch_6e
        0x1c -> :sswitch_6b
        0x1f -> :sswitch_68
        0x23 -> :sswitch_65
        0x44 -> :sswitch_62
        0x4c -> :sswitch_5f
        0x54 -> :sswitch_5c
        0x5a -> :sswitch_59
        0x68 -> :sswitch_56
        0x7b -> :sswitch_53
        0x7d -> :sswitch_50
        0x86 -> :sswitch_4d
        0xa7 -> :sswitch_4a
        0xab -> :sswitch_47
        0xe7 -> :sswitch_44
        0xed -> :sswitch_41
        0x111 -> :sswitch_3e
        0x12c -> :sswitch_3b
        0x132 -> :sswitch_38
        0x135 -> :sswitch_35
        0x13e -> :sswitch_32
        0x147 -> :sswitch_2f
        0x149 -> :sswitch_2c
        0x159 -> :sswitch_29
        0x15e -> :sswitch_26
        0x18d -> :sswitch_23
    .end sparse-switch
.end method
