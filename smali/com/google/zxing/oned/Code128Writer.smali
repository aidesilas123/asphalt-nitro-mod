###### Class com.google.zxing.oned.Code128Writer (com.google.zxing.oned.Code128Writer)
.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/n;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;,
        Lcom/google/zxing/oned/Code128Writer$CType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/oned/n;-><init>()V

    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/util/Map;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_61

    sget-object v2, Lcom/google/zxing/EncodeHintType;->q:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_fa

    goto :goto_3f

    :pswitch_1f
    const-string v2, "C"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_3f

    :cond_28
    const/4 v1, 0x2

    goto :goto_3f

    :pswitch_2a
    const-string v2, "B"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_3f

    :cond_33
    const/4 v1, 0x1

    goto :goto_3f

    :pswitch_35
    const-string v2, "A"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    packed-switch v1, :pswitch_data_104

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported code set hint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_59
    const/16 v1, 0x63

    goto :goto_61

    :pswitch_5c
    const/16 v1, 0x64

    goto :goto_61

    :pswitch_5f
    const/16 v1, 0x65

    :cond_61
    :goto_61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :goto_65
    if-ge v0, p1, :cond_f8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    packed-switch v2, :pswitch_data_10e

    if-gt v2, v3, :cond_e1

    :pswitch_72
    packed-switch v1, :pswitch_data_11a

    goto :goto_de

    :pswitch_76
    const/16 v4, 0x5f

    if-le v2, v4, :cond_de

    if-le v2, v3, :cond_7d

    goto :goto_de

    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad character in input for forced code set A: ASCII value="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_94
    const/16 v3, 0x20

    if-lt v2, v3, :cond_99

    goto :goto_de

    :cond_99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad character in input for forced code set B: ASCII value="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_b0
    const/16 v4, 0x30

    if-lt v2, v4, :cond_c7

    const/16 v4, 0x39

    if-le v2, v4, :cond_ba

    if-le v2, v3, :cond_c7

    :cond_ba
    const/16 v3, 0xf2

    if-eq v2, v3, :cond_c7

    const/16 v3, 0xf3

    if-eq v2, v3, :cond_c7

    const/16 v3, 0xf4

    if-eq v2, v3, :cond_c7

    goto :goto_de

    :cond_c7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad character in input for forced code set C: ASCII value="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_de
    :goto_de
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_e1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad character in input: ASCII value="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f8
    return v1

    nop

    :pswitch_data_fa
    .packed-switch 0x41
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
    .end packed-switch

    :pswitch_data_10e
    .packed-switch 0xf1
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x63
        :pswitch_b0
        :pswitch_94
        :pswitch_76
    .end packed-switch
.end method

.method private static j(Ljava/lang/CharSequence;II)I
    .registers 9

    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->l(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->b:Lcom/google/zxing/oned/Code128Writer$CType;

    const/16 v2, 0x65

    const/16 v3, 0x64

    if-ne v0, v1, :cond_10

    if-ne p2, v2, :cond_f

    return v2

    :cond_f
    return v3

    :cond_10
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->a:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v4, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_31

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x20

    if-lt p0, p1, :cond_30

    if-ne p2, v2, :cond_31

    const/16 p1, 0x60

    if-lt p0, p1, :cond_30

    const/16 p1, 0xf1

    if-lt p0, p1, :cond_31

    const/16 p1, 0xf4

    if-gt p0, p1, :cond_31

    :cond_30
    return v2

    :cond_31
    return v3

    :cond_32
    if-ne p2, v2, :cond_39

    sget-object v5, Lcom/google/zxing/oned/Code128Writer$CType;->d:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v5, :cond_39

    return v2

    :cond_39
    const/16 v2, 0x63

    if-ne p2, v2, :cond_3e

    return v2

    :cond_3e
    if-ne p2, v3, :cond_72

    sget-object p2, Lcom/google/zxing/oned/Code128Writer$CType;->d:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, p2, :cond_45

    return v3

    :cond_45
    add-int/lit8 v0, p1, 0x2

    invoke-static {p0, v0}, Lcom/google/zxing/oned/Code128Writer;->l(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v0

    if-eq v0, v4, :cond_71

    if-ne v0, v1, :cond_50

    goto :goto_71

    :cond_50
    if-ne v0, p2, :cond_5e

    add-int/lit8 p1, p1, 0x3

    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->l(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object p0

    sget-object p1, Lcom/google/zxing/oned/Code128Writer$CType;->c:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne p0, p1, :cond_5d

    return v2

    :cond_5d
    return v3

    :cond_5e
    add-int/lit8 p1, p1, 0x4

    :goto_60
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->l(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object p2

    sget-object v0, Lcom/google/zxing/oned/Code128Writer$CType;->c:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne p2, v0, :cond_6b

    add-int/lit8 p1, p1, 0x2

    goto :goto_60

    :cond_6b
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->b:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne p2, p0, :cond_70

    return v3

    :cond_70
    return v2

    :cond_71
    :goto_71
    return v3

    :cond_72
    sget-object p2, Lcom/google/zxing/oned/Code128Writer$CType;->d:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, p2, :cond_7c

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->l(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v0

    :cond_7c
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->c:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, p0, :cond_81

    return v2

    :cond_81
    return v3
.end method

.method private static k(Ljava/lang/String;I)[Z
    .registers 12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :cond_e
    :goto_e
    if-ge v2, v0, :cond_8a

    const/4 v7, -0x1

    if-ne p1, v7, :cond_18

    invoke-static {p0, v2, v5}, Lcom/google/zxing/oned/Code128Writer;->j(Ljava/lang/CharSequence;II)I

    move-result v7

    goto :goto_19

    :cond_18
    move v7, p1

    :goto_19
    const/16 v8, 0x64

    const/16 v9, 0x65

    if-ne v7, v5, :cond_64

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_90

    goto :goto_35

    :pswitch_27
    if-ne v5, v9, :cond_62

    const/16 v8, 0x65

    goto :goto_62

    :pswitch_2c
    const/16 v8, 0x60

    goto :goto_62

    :pswitch_2f
    const/16 v8, 0x61

    goto :goto_62

    :pswitch_32
    const/16 v8, 0x66

    goto :goto_62

    :goto_35
    if-eq v5, v8, :cond_5c

    if-eq v5, v9, :cond_51

    add-int/lit8 v7, v2, 0x1

    if-eq v7, v0, :cond_49

    add-int/lit8 v8, v2, 0x2

    invoke-virtual {p0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v2, v7

    goto :goto_62

    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad number of characters for digit only encoding."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v7, -0x20

    if-gez v8, :cond_62

    add-int/lit8 v8, v8, 0x60

    goto :goto_62

    :cond_5c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v7, -0x20

    :cond_62
    :goto_62
    add-int/2addr v2, v3

    goto :goto_7b

    :cond_64
    if-nez v5, :cond_79

    if-eq v7, v8, :cond_74

    if-eq v7, v9, :cond_6f

    const/16 v5, 0x69

    const/16 v8, 0x69

    goto :goto_7a

    :cond_6f
    const/16 v5, 0x67

    const/16 v8, 0x67

    goto :goto_7a

    :cond_74
    const/16 v5, 0x68

    const/16 v8, 0x68

    goto :goto_7a

    :cond_79
    move v8, v7

    :goto_7a
    move v5, v7

    :goto_7b
    sget-object v7, Lcom/google/zxing/oned/c;->a:[[I

    aget-object v7, v7, v8

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    mul-int v8, v8, v6

    add-int/2addr v4, v8

    if-eqz v2, :cond_e

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_8a
    invoke-static {v1, v4}, Lcom/google/zxing/oned/Code128Writer;->m(Ljava/util/Collection;I)[Z

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_90
    .packed-switch 0xf1
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_27
    .end packed-switch
.end method

.method private static l(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;
    .registers 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p1, v0, :cond_9

    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->a:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0

    :cond_9
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xf1

    if-ne v1, v2, :cond_14

    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->d:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0

    :cond_14
    const/16 v2, 0x30

    if-lt v1, v2, :cond_33

    const/16 v3, 0x39

    if-le v1, v3, :cond_1d

    goto :goto_33

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_24

    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->b:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0

    :cond_24
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, v2, :cond_30

    if-le p0, v3, :cond_2d

    goto :goto_30

    :cond_2d
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->c:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0

    :cond_30
    :goto_30
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->b:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0

    :cond_33
    :goto_33
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->a:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0
.end method

.method static m(Ljava/util/Collection;I)[Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[I>;I)[Z"
        }
    .end annotation

    rem-int/lit8 p1, p1, 0x67

    if-ltz p1, :cond_48

    sget-object v0, Lcom/google/zxing/oned/c;->a:[[I

    aget-object p1, v0, p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x6a

    aget-object p1, v0, p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v3, :cond_18

    aget v5, v2, v4

    add-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_2e
    new-array p1, v1, [Z

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/google/zxing/oned/n;->b([ZI[IZ)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_34

    :cond_47
    return-object p1

    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to compute a valid input checksum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)[Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/Code128Writer;->e(Ljava/lang/String;Ljava/util/Map;)[Z

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/util/Map;)[Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)[Z"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/zxing/oned/Code128Writer;->i(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    if-eqz p2, :cond_1e

    sget-object v1, Lcom/google/zxing/EncodeHintType;->s:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    if-eqz p2, :cond_2c

    new-instance p2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;-><init>(Lcom/google/zxing/oned/Code128Writer$a;)V

    invoke-static {p2, p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a(Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;Ljava/lang/String;)[Z

    move-result-object p1

    goto :goto_30

    :cond_2c
    invoke-static {p1, v0}, Lcom/google/zxing/oned/Code128Writer;->k(Ljava/lang/String;I)[Z

    move-result-object p1

    :goto_30
    return-object p1
.end method

.method protected g()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->e:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.zxing.oned.Code128Writer.CType (com.google.zxing.oned.Code128Writer$CType)
.class final enum Lcom/google/zxing/oned/Code128Writer$CType;
.super Ljava/lang/Enum;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/Code128Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/oned/Code128Writer$CType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/oned/Code128Writer$CType;

.field public static final enum b:Lcom/google/zxing/oned/Code128Writer$CType;

.field public static final enum c:Lcom/google/zxing/oned/Code128Writer$CType;

.field public static final enum d:Lcom/google/zxing/oned/Code128Writer$CType;

.field private static final synthetic e:[Lcom/google/zxing/oned/Code128Writer$CType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/google/zxing/oned/Code128Writer$CType;

    const-string v1, "UNCODABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/Code128Writer$CType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/oned/Code128Writer$CType;->a:Lcom/google/zxing/oned/Code128Writer$CType;

    new-instance v1, Lcom/google/zxing/oned/Code128Writer$CType;

    const-string v3, "ONE_DIGIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/oned/Code128Writer$CType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->b:Lcom/google/zxing/oned/Code128Writer$CType;

    new-instance v3, Lcom/google/zxing/oned/Code128Writer$CType;

    const-string v5, "TWO_DIGITS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/oned/Code128Writer$CType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/oned/Code128Writer$CType;->c:Lcom/google/zxing/oned/Code128Writer$CType;

    new-instance v5, Lcom/google/zxing/oned/Code128Writer$CType;

    const-string v7, "FNC_1"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/oned/Code128Writer$CType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/oned/Code128Writer$CType;->d:Lcom/google/zxing/oned/Code128Writer$CType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/oned/Code128Writer$CType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/zxing/oned/Code128Writer$CType;->e:[Lcom/google/zxing/oned/Code128Writer$CType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/Code128Writer$CType;
    .registers 2

    const-class v0, Lcom/google/zxing/oned/Code128Writer$CType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/oned/Code128Writer$CType;
    .registers 1

    sget-object v0, Lcom/google/zxing/oned/Code128Writer$CType;->e:[Lcom/google/zxing/oned/Code128Writer$CType;

    invoke-virtual {v0}, [Lcom/google/zxing/oned/Code128Writer$CType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v0
.end method

###### Class com.google.zxing.oned.Code128Writer.MinimalEncoder (com.google.zxing.oned.Code128Writer$MinimalEncoder)
.class final Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;
.super Ljava/lang/Object;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/Code128Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MinimalEncoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;,
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    }
.end annotation


# instance fields
.field private a:[[I

.field private b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/oned/Code128Writer$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;Ljava/lang/String;)[Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->e(Ljava/lang/String;)[Z

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/Collection;I[I[II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[I>;I[I[II)V"
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/oned/c;->a:[[I

    aget-object v0, v0, p1

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    if-eqz p4, :cond_10

    aget p4, p3, p0

    add-int/lit8 p4, p4, 0x1

    aput p4, p3, p0

    :cond_10
    aget p4, p2, p0

    aget p3, p3, p0

    mul-int p1, p1, p3

    add-int/2addr p4, p1

    aput p4, p2, p0

    return-void
.end method

.method private c(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z
    .registers 12

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$a;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/16 v1, 0xf4

    const/16 v2, 0xf3

    const/16 v3, 0xf2

    const/16 v4, 0xf1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p2, v6, :cond_4c

    const/4 v7, 0x2

    if-eq p2, v7, :cond_3a

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1f

    return v5

    :cond_1f
    if-eq v0, v4, :cond_38

    add-int/2addr p3, v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge p3, p2, :cond_39

    invoke-static {v0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->f(C)Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->f(C)Z

    move-result p1

    if-eqz p1, :cond_39

    :cond_38
    const/4 v5, 0x1

    :cond_39
    return v5

    :cond_3a
    if-eq v0, v4, :cond_4a

    if-eq v0, v3, :cond_4a

    if-eq v0, v2, :cond_4a

    if-eq v0, v1, :cond_4a

    const-string p1, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f\u00ff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_4b

    :cond_4a
    const/4 v5, 0x1

    :cond_4b
    return v5

    :cond_4c
    if-eq v0, v4, :cond_5c

    if-eq v0, v3, :cond_5c

    if-eq v0, v2, :cond_5c

    if-eq v0, v1, :cond_5c

    const-string p1, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u00ff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_5d

    :cond_5c
    const/4 v5, 0x1

    :cond_5d
    return v5
.end method

.method private d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I
    .registers 16

    iget-object v0, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a:[[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aget v0, v0, p3

    if-lez v0, :cond_d

    return v0

    :cond_d
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->e:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    add-int/lit8 v1, p3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    const/4 v5, 0x2

    new-array v6, v5, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    sget-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->a:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    aput-object v7, v6, v3

    sget-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->b:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    aput-object v7, v6, v4

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    :goto_2d
    if-gt v3, v4, :cond_70

    aget-object v9, v6, v3

    invoke-direct {p0, p1, v9, p3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->c(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    move-result v9

    if-eqz v9, :cond_6d

    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->e:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    aget-object v10, v6, v3

    if-eq p2, v10, :cond_49

    aget-object v9, v6, v3

    invoke-virtual {v9}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    move-result-object v9

    const/4 v10, 0x2

    goto :goto_4a

    :cond_49
    const/4 v10, 0x1

    :goto_4a
    if-nez v2, :cond_53

    aget-object v11, v6, v3

    invoke-direct {p0, p1, v11, v1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v11

    add-int/2addr v10, v11

    :cond_53
    if-ge v10, v8, :cond_57

    move-object v0, v9

    move v8, v10

    :cond_57
    add-int/lit8 v9, v3, 0x1

    rem-int/2addr v9, v5

    aget-object v9, v6, v9

    if-ne p2, v9, :cond_6d

    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->d:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-nez v2, :cond_68

    invoke-direct {p0, p1, p2, v1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v10

    add-int/2addr v10, v5

    goto :goto_69

    :cond_68
    const/4 v10, 0x2

    :goto_69
    if-ge v10, v8, :cond_6d

    move-object v0, v9

    move v8, v10

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_70
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->c:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-direct {p0, p1, v1, p3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->c(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    move-result v2

    if-eqz v2, :cond_9b

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->e:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-eq p2, v1, :cond_80

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->c:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    const/4 v3, 0x2

    goto :goto_81

    :cond_80
    const/4 v3, 0x1

    :goto_81
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v9, 0xf1

    if-ne v6, v9, :cond_8a

    goto :goto_8b

    :cond_8a
    const/4 v4, 0x2

    :goto_8b
    add-int/2addr v4, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_97

    invoke-direct {p0, p1, v1, v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v1

    add-int/2addr v3, v1

    :cond_97
    if-ge v3, v8, :cond_9b

    move-object v0, v2

    move v8, v3

    :cond_9b
    if-eq v8, v7, :cond_b2

    iget-object p1, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a:[[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p1, p1, v1

    aput v8, p1, p3

    iget-object p1, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p1, p1, p2

    aput-object v0, p1, p3

    return v8

    :cond_b2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad character in input: ASCII value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private e(Ljava/lang/String;)[Z
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v2, 0x0

    const/4 v6, 0x4

    aput v6, v4, v2

    const-class v7, I

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a:[[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v7, v3, [I

    aput v4, v7, v5

    aput v6, v7, v2

    const-class v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    iput-object v4, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->d:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-array v8, v5, [I

    aput v2, v8, v2

    new-array v9, v5, [I

    aput v5, v9, v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    :goto_47
    if-ge v11, v10, :cond_ff

    iget-object v12, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget-object v12, v12, v13

    aget-object v12, v12, v11

    sget-object v13, Lcom/google/zxing/oned/Code128Writer$a;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    const/16 v14, 0x64

    const/16 v15, 0x65

    if-eq v13, v5, :cond_89

    if-eq v13, v3, :cond_7c

    const/4 v3, 0x3

    if-eq v13, v3, :cond_6f

    if-eq v13, v6, :cond_69

    goto :goto_96

    :cond_69
    const/16 v3, 0x62

    invoke-static {v7, v3, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    goto :goto_96

    :cond_6f
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->c:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v11, :cond_76

    const/16 v4, 0x69

    goto :goto_78

    :cond_76
    const/16 v4, 0x63

    :goto_78
    invoke-static {v7, v4, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    goto :goto_95

    :cond_7c
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->b:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v11, :cond_83

    const/16 v4, 0x68

    goto :goto_85

    :cond_83
    const/16 v4, 0x64

    :goto_85
    invoke-static {v7, v4, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    goto :goto_95

    :cond_89
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->a:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v11, :cond_90

    const/16 v4, 0x67

    goto :goto_92

    :cond_90
    const/16 v4, 0x65

    :goto_92
    invoke-static {v7, v4, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    :goto_95
    move-object v4, v3

    :goto_96
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->c:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    const/16 v13, 0x66

    if-ne v4, v3, :cond_bb

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v12, 0xf1

    if-ne v3, v12, :cond_a8

    invoke-static {v7, v13, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    goto :goto_fb

    :cond_a8
    add-int/lit8 v3, v11, 0x2

    invoke-virtual {v1, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v7, v3, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    add-int/lit8 v3, v11, 0x1

    if-ge v3, v10, :cond_fb

    move v11, v3

    goto :goto_fb

    :cond_bb
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_10c

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v14, v3, -0x20

    goto :goto_e4

    :pswitch_c9
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->a:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v4, v3, :cond_d1

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->d:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_d9

    :cond_d1
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->b:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v4, v3, :cond_e4

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->d:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_e4

    :cond_d9
    const/16 v14, 0x65

    goto :goto_e4

    :pswitch_dc
    const/16 v14, 0x60

    goto :goto_e4

    :pswitch_df
    const/16 v14, 0x61

    goto :goto_e4

    :pswitch_e2
    const/16 v14, 0x66

    :cond_e4
    :goto_e4
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->a:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v4, v3, :cond_ec

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->d:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_f4

    :cond_ec
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->b:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v4, v3, :cond_f8

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->d:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_f8

    :cond_f4
    if-gez v14, :cond_f8

    add-int/lit8 v14, v14, 0x60

    :cond_f8
    invoke-static {v7, v14, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    :cond_fb
    :goto_fb
    add-int/2addr v11, v5

    const/4 v3, 0x2

    goto/16 :goto_47

    :cond_ff
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a:[[I

    iput-object v1, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    aget v1, v8, v2

    invoke-static {v7, v1}, Lcom/google/zxing/oned/Code128Writer;->m(Ljava/util/Collection;I)[Z

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_10c
    .packed-switch 0xf1
        :pswitch_e2
        :pswitch_df
        :pswitch_dc
        :pswitch_c9
    .end packed-switch
.end method

.method private static f(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

###### Class com.google.zxing.oned.Code128Writer.MinimalEncoder.Charset (com.google.zxing.oned.Code128Writer$MinimalEncoder$Charset)
.class final enum Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
.super Ljava/lang/Enum;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Charset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

.field public static final enum b:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

.field public static final enum c:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

.field public static final enum d:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

.field private static final synthetic e:[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    const-string v1, "A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->a:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    new-instance v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    const-string v3, "B"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->b:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    new-instance v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    const-string v5, "C"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->c:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    new-instance v5, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->d:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->e:[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    .registers 2

    const-class v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    .registers 1

    sget-object v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->e:[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-virtual {v0}, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    return-object v0
.end method

###### Class com.google.zxing.oned.Code128Writer.MinimalEncoder.Latch (com.google.zxing.oned.Code128Writer$MinimalEncoder$Latch)
.class final enum Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;
.super Ljava/lang/Enum;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Latch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

.field public static final enum b:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

.field public static final enum c:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

.field public static final enum d:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

.field public static final enum e:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

.field private static final synthetic f:[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    const-string v1, "A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->a:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    new-instance v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    const-string v3, "B"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->b:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    new-instance v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    const-string v5, "C"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->c:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    new-instance v5, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    const-string v7, "SHIFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->d:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    new-instance v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->e:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->f:[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;
    .registers 2

    const-class v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;
    .registers 1

    sget-object v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->f:[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v0}, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    return-object v0
.end method

###### Class com.google.zxing.oned.Code128Writer.a (com.google.zxing.oned.Code128Writer$a)
.class synthetic Lcom/google/zxing/oned/Code128Writer$a;
.super Ljava/lang/Object;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/Code128Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->values()[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/zxing/oned/Code128Writer$a;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->a:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$a;->b:[I

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->b:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$a;->b:[I

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->c:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    invoke-static {}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->values()[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/zxing/oned/Code128Writer$a;->a:[I

    :try_start_31
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->a:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$a;->a:[I

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->b:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$a;->a:[I

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->c:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4d
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$a;->a:[I

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->d:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_58} :catch_58

    :catch_58
    return-void
.end method
