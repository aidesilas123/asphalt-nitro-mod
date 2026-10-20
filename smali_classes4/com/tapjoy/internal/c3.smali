###### Class com.tapjoy.internal.c3 (com.tapjoy.internal.c3)
.class public final Lcom/tapjoy/internal/c3;
.super Lcom/tapjoy/internal/q7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/q7;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .registers 9

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_49

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_13

    goto :goto_41

    :cond_13
    const/16 v4, 0x800

    if-ge v3, v4, :cond_1a

    add-int/lit8 v2, v2, 0x2

    goto :goto_46

    :cond_1a
    const v4, 0xd800

    if-lt v3, v4, :cond_44

    const v4, 0xdfff

    if-le v3, v4, :cond_25

    goto :goto_44

    :cond_25
    const v5, 0xdbff

    if-gt v3, v5, :cond_41

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_41

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xdc00

    if-lt v5, v6, :cond_41

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v4, :cond_41

    add-int/lit8 v2, v2, 0x4

    move v1, v3

    goto :goto_46

    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x3

    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_49
    return v2
.end method

.method public final d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->a()J

    move-result-wide v0

    iget-object p1, p1, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast p1, Lcom/tapjoy/internal/n;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/n;->j(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
    .registers 13

    check-cast p2, Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/w5;->a:Lcom/tapjoy/internal/c0;

    check-cast p1, Lcom/tapjoy/internal/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_f6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_d6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_d5

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_56

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/tapjoy/internal/n;->f(I)Lcom/tapjoy/internal/r7;

    move-result-object v5

    iget-object v6, v5, Lcom/tapjoy/internal/r7;->a:[B

    iget v7, v5, Lcom/tapjoy/internal/r7;->c:I

    sub-int/2addr v7, v2

    rsub-int v8, v7, 0x2000

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v9, v2, 0x1

    add-int/2addr v2, v7

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    :goto_37
    move v2, v9

    if-ge v2, v8, :cond_48

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v4, :cond_41

    goto :goto_48

    :cond_41
    add-int/lit8 v9, v2, 0x1

    add-int/2addr v2, v7

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    goto :goto_37

    :cond_48
    :goto_48
    add-int/2addr v7, v2

    iget v3, v5, Lcom/tapjoy/internal/r7;->c:I

    sub-int/2addr v7, v3

    add-int/2addr v3, v7

    iput v3, v5, Lcom/tapjoy/internal/r7;->c:I

    iget-wide v3, p1, Lcom/tapjoy/internal/n;->b:J

    int-to-long v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p1, Lcom/tapjoy/internal/n;->b:J

    goto :goto_17

    :cond_56
    const/16 v5, 0x800

    if-ge v3, v5, :cond_6a

    shr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0xc0

    invoke-virtual {p1, v5}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_6a
    const v5, 0xd800

    const/16 v6, 0x3f

    if-lt v3, v5, :cond_c0

    const v5, 0xdfff

    if-le v3, v5, :cond_77

    goto :goto_c0

    :cond_77
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v0, :cond_80

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_81

    :cond_80
    const/4 v8, 0x0

    :goto_81
    const v9, 0xdbff

    if-gt v3, v9, :cond_ba

    const v9, 0xdc00

    if-lt v8, v9, :cond_ba

    if-le v8, v5, :cond_8e

    goto :goto_ba

    :cond_8e
    const v5, -0xd801

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0xa

    const v5, -0xdc01

    and-int/2addr v5, v8

    or-int/2addr v3, v5

    const/high16 v5, 0x10000

    add-int/2addr v3, v5

    shr-int/lit8 v5, v3, 0x12

    or-int/lit16 v5, v5, 0xf0

    invoke-virtual {p1, v5}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    shr-int/lit8 v5, v3, 0xc

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    invoke-virtual {p1, v5}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    invoke-virtual {p1, v5}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    and-int/2addr v3, v6

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_17

    :cond_ba
    :goto_ba
    invoke-virtual {p1, v6}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    move v2, v7

    goto/16 :goto_17

    :cond_c0
    :goto_c0
    shr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0xe0

    invoke-virtual {p1, v5}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    invoke-virtual {p1, v5}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    goto :goto_67

    :cond_d5
    return-void

    :cond_d6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex > string.length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "endIndex < beginIndex: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < 0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
