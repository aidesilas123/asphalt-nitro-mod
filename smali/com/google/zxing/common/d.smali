###### Class com.google.zxing.common.d (com.google.zxing.common.d)
.class public final Lcom/google/zxing/common/d;
.super Ljava/lang/Object;
.source "ECIEncoderSet.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:[Ljava/nio/charset/CharsetEncoder;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 21

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/zxing/common/d;->a:Ljava/util/List;

    const/16 v0, 0x14

    const-string v1, "IBM437"

    const-string v2, "ISO-8859-2"

    const-string v3, "ISO-8859-3"

    const-string v4, "ISO-8859-4"

    const-string v5, "ISO-8859-5"

    const-string v6, "ISO-8859-6"

    const-string v7, "ISO-8859-7"

    const-string v8, "ISO-8859-8"

    const-string v9, "ISO-8859-9"

    const-string v10, "ISO-8859-10"

    const-string v11, "ISO-8859-11"

    const-string v12, "ISO-8859-13"

    const-string v13, "ISO-8859-14"

    const-string v14, "ISO-8859-15"

    const-string v15, "ISO-8859-16"

    const-string v16, "windows-1250"

    const-string v17, "windows-1251"

    const-string v18, "windows-1252"

    const-string v19, "windows-1256"

    const-string v20, "Shift_JIS"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_36
    if-ge v2, v0, :cond_50

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v4

    if-eqz v4, :cond_4d

    :try_start_40
    sget-object v4, Lcom/google/zxing/common/d;->a:Ljava/util/List;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_40 .. :try_end_4d} :catch_4d

    :catch_4d
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    const/4 v4, 0x0

    :goto_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_72

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, p3, :cond_47

    invoke-virtual {v6, v7}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v6

    if-eqz v6, :cond_2f

    :cond_47
    const/4 v5, 0x1

    goto :goto_4a

    :cond_49
    const/4 v5, 0x0

    :goto_4a
    if-nez v5, :cond_6c

    sget-object v6, Lcom/google/zxing/common/d;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_52
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :cond_6c
    if-nez v5, :cond_6f

    const/4 v3, 0x1

    :cond_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_87

    if-nez v3, :cond_87

    new-array p1, v2, [Ljava/nio/charset/CharsetEncoder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/charset/CharsetEncoder;

    aput-object p3, p1, v1

    iput-object p1, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    goto :goto_bf

    :cond_87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/nio/charset/CharsetEncoder;

    iput-object p1, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_96
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    add-int/lit8 v4, p3, 0x1

    aput-object v0, v3, p3

    move p3, v4

    goto :goto_96

    :cond_aa
    iget-object p1, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    aput-object v0, p1, p3

    iget-object p1, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    add-int/2addr p3, v2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    aput-object v0, p1, p3

    :goto_bf
    const/4 p1, -0x1

    if-eqz p2, :cond_e6

    :goto_c2
    iget-object p3, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    array-length v0, p3

    if-ge v1, v0, :cond_e6

    aget-object p3, p3, v1

    if-eqz p3, :cond_e3

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e3

    move p1, v1

    goto :goto_e6

    :cond_e3
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    :cond_e6
    :goto_e6
    iput p1, p0, Lcom/google/zxing/common/d;->c:I

    return-void
.end method


# virtual methods
.method public a(CI)Z
    .registers 5

    iget-object v0, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    aget-object p2, v0, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public b(CI)[B
    .registers 5

    iget-object v0, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    aget-object p2, v0, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;I)[B
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    aget-object p2, v0, p2

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public d(I)Ljava/nio/charset/Charset;
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1
.end method

.method public e(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/common/CharacterSetECI;->f()I

    move-result p1

    return p1
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/common/d;->c:I

    return v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/common/d;->b:[Ljava/nio/charset/CharsetEncoder;

    array-length v0, v0

    return v0
.end method
