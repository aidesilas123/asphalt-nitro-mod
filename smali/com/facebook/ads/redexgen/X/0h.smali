###### Class com.facebook.ads.redexgen.X.C06580h (com.facebook.ads.redexgen.X.0h)
.class public final Lcom/facebook/ads/redexgen/X/0h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "88AoqknPZ4rnlocmRSd1iIvU160OI6Up"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Xa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "c0t0ITAkOrWkNbi2AOUUle7x7Lv9c02n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "B7XNNyfmW5R2wceLmJkXAkDES3fZG3Pt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MUV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NALjFYAH0tlSEiNw3RaQSfKZY5jyxbRm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XF7p93xq3OHri6co5HggQunfVTz3vEaG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "n2FdIZz9zx79PfKUryB9rXi8CBHMM9xX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0h;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0h;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/0h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0h;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/1R;)Lcom/facebook/ads/redexgen/X/0g;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/YA;",
            "Lcom/facebook/ads/redexgen/X/If;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/1R;",
            ")",
            "Lcom/facebook/ads/redexgen/X/0g;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object p0, p5

    invoke-static/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/0h;->A01(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZLcom/facebook/ads/redexgen/X/1R;)Lcom/facebook/ads/redexgen/X/0g;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZLcom/facebook/ads/redexgen/X/1R;)Lcom/facebook/ads/redexgen/X/0g;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/YA;",
            "Lcom/facebook/ads/redexgen/X/If;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/facebook/ads/redexgen/X/1R;",
            ")",
            "Lcom/facebook/ads/redexgen/X/0g;"
        }
    .end annotation

    const/4 v9, 0x0

    move-object/from16 v13, p3

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    return-object v9

    :cond_c
    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x71

    const/16 v1, 0x9

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x2d

    const/4 v1, 0x4

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v10, p0

    move-object/from16 p0, p4

    if-eqz v5, :cond_97

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/0h;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_49

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_49
    sget-object v2, Lcom/facebook/ads/redexgen/X/0h;->A01:[Ljava/lang/String;

    const-string v1, "ISDJ842CIGTTmPHzT0dMVnvZcLrwzpZ1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v4, :cond_97

    :try_start_52
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_6b} :catch_6f

    :try_start_6b
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_6f} :catch_71

    :catch_6f
    move-exception v5

    goto :goto_72

    :catch_71
    move-exception v5

    :goto_72
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v7

    sget v6, Lcom/facebook/ads/redexgen/X/7x;->A22:I

    new-instance v4, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 v2, 0x40

    const/4 v1, 0x7

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v6, v4}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    sget-object v4, Lcom/facebook/ads/redexgen/X/0h;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x2d

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_97
    invoke-static {}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A00()Landroid/app/Activity;

    move-result-object v0

    move-object v11, p1

    invoke-static {v11, v0}, Lcom/facebook/ads/redexgen/X/0n;->A00(Lcom/facebook/ads/redexgen/X/If;Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/0n;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_148

    :cond_a7
    const/4 v0, -0x1

    :goto_a8
    move-object/from16 v12, p2

    move/from16 p2, p5

    packed-switch v0, :pswitch_data_156

    new-instance v0, Lcom/facebook/ads/redexgen/X/au;

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/facebook/ads/redexgen/X/au;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    :sswitch_b5
    const/16 v2, 0x47

    const/16 v1, 0xb

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const/4 v0, 0x2

    goto :goto_a8

    :sswitch_c7
    const/16 v2, 0x52

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const/4 v0, 0x0

    goto :goto_a8

    :sswitch_d8
    const/16 v2, 0x37

    const/16 v1, 0x9

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const/4 v0, 0x1

    goto :goto_a8

    :pswitch_ea
    if-eqz v8, :cond_ed

    return-object v9

    :cond_ed
    if-eqz p6, :cond_10a

    const/16 v2, 0x57

    const/16 v1, 0x16

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10a

    new-instance v9, Lcom/facebook/ads/redexgen/X/FH;

    const/4 p1, 0x1

    invoke-direct/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/FH;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Z)V

    return-object v9

    :cond_10a
    new-instance v9, Lcom/facebook/ads/redexgen/X/FI;

    move-object/from16 p3, p7

    invoke-direct/range {v9 .. v17}, Lcom/facebook/ads/redexgen/X/FI;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/0n;ZLcom/facebook/ads/redexgen/X/1R;)V

    return-object v9

    :pswitch_112
    const/16 v2, 0x31

    const/4 v1, 0x6

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6d

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    new-instance v9, Lcom/facebook/ads/redexgen/X/FF;

    invoke-direct/range {v9 .. v16}, Lcom/facebook/ads/redexgen/X/FF;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/0n;Z)V

    return-object v9

    :cond_134
    if-eqz p6, :cond_13c

    new-instance v9, Lcom/facebook/ads/redexgen/X/FH;

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/FH;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)V

    return-object v9

    :cond_13c
    new-instance v9, Lcom/facebook/ads/redexgen/X/FG;

    invoke-direct/range {v9 .. v16}, Lcom/facebook/ads/redexgen/X/FG;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/0n;Z)V

    return-object v9

    :pswitch_142
    new-instance v9, Lcom/facebook/ads/redexgen/X/av;

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/av;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)V

    return-object v9

    :sswitch_data_148
    .sparse-switch
        -0x56f35e6c -> :sswitch_b5
        0x68af8e1 -> :sswitch_c7
        0x5c27a0cf -> :sswitch_d8
    .end sparse-switch

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_ea
        :pswitch_112
        :pswitch_142
    .end packed-switch
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/0h;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x21

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x7a

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/0h;->A00:[B

    return-void

    :array_a
    .array-data 1
        0x6ft
        0x54t
        0x5bt
        0x58t
        0x56t
        0x5ft
        0x1at
        0x4et
        0x55t
        0x1at
        0x4at
        0x5bt
        0x48t
        0x49t
        0x5ft
        0x1at
        0x50t
        0x49t
        0x55t
        0x54t
        0x1at
        0x5et
        0x5bt
        0x4et
        0x5bt
        0x1at
        0x53t
        0x54t
        0x1at
        0x7bt
        0x5et
        0x7bt
        0x59t
        0x4et
        0x53t
        0x55t
        0x54t
        0x7ct
        0x5bt
        0x59t
        0x4et
        0x55t
        0x48t
        0x43t
        0x14t
        0x13t
        0x16t
        0x3t
        0x16t
        0x52t
        0x53t
        0x4et
        0x54t
        0x49t
        0x58t
        0x41t
        0x5et
        0x4bt
        0x40t
        0x71t
        0x42t
        0x47t
        0x40t
        0x45t
        0x62t
        0x73t
        0x60t
        0x61t
        0x7bt
        0x7ct
        0x75t
        0x1bt
        0xat
        0x18t
        0x18t
        0x1ft
        0x3t
        0x19t
        0x4t
        0x1et
        0xct
        0x3t
        0x27t
        0x20t
        0x3bt
        0x26t
        0x31t
        0x28t
        0x2ft
        0x34t
        0x29t
        0x3et
        0x4t
        0x2et
        0x29t
        0x37t
        0x4t
        0x2ct
        0x3et
        0x39t
        0x4t
        0x3dt
        0x3at
        0x37t
        0x37t
        0x39t
        0x3at
        0x38t
        0x30t
        0x31t
        0x37t
        0x30t
        0x20t
        0x7bt
        0x64t
        0x69t
        0x68t
        0x62t
        0x52t
        0x78t
        0x7ft
        0x61t
    .end array-data
.end method

.method public static A04(Ljava/lang/String;)Z
    .registers 4

    const/16 v2, 0x52

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 v2, 0x37

    const/16 v1, 0x9

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method
