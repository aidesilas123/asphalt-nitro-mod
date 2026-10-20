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
