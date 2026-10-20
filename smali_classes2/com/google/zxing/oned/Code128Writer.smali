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
