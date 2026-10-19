###### Class com.fyber.inneractive.sdk.protobuf.i (com.fyber.inneractive.sdk.protobuf.i)
.class public abstract Lcom/fyber/inneractive/sdk/protobuf/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/protobuf/i$d;,
        Lcom/fyber/inneractive/sdk/protobuf/i$h;,
        Lcom/fyber/inneractive/sdk/protobuf/i$g;,
        Lcom/fyber/inneractive/sdk/protobuf/i$b;,
        Lcom/fyber/inneractive/sdk/protobuf/i$f;,
        Lcom/fyber/inneractive/sdk/protobuf/i$c;,
        Lcom/fyber/inneractive/sdk/protobuf/i$i;,
        Lcom/fyber/inneractive/sdk/protobuf/i$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final b:Lcom/fyber/inneractive/sdk/protobuf/i;

.field public static final c:Lcom/fyber/inneractive/sdk/protobuf/i$e;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/i$h;

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/y;->b:[B

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/i$h;-><init>([B)V

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/i;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/i$i;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/protobuf/i$i;-><init>()V

    goto :goto_1a

    :cond_15
    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/i$c;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/protobuf/i$c;-><init>()V

    :goto_1a
    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/i;->c:Lcom/fyber/inneractive/sdk/protobuf/i$e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i;->a:I

    return-void
.end method

.method public static a(III)I
    .registers 6

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_68

    if-ltz p0, :cond_4c

    if-ge p1, p0, :cond_2d

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beginning index larger than ending index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Beginning index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    return v0
.end method

.method public static a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 3

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/i$h;

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;-><init>([B)V

    return-object v0
.end method

.method public static a([BII)Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 5

    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(III)I

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/i$h;

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/i;->c:Lcom/fyber/inneractive/sdk/protobuf/i$e;

    invoke-interface {v1, p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/i$e;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;-><init>([B)V

    return-object v0
.end method

.method public static a(II)V
    .registers 5

    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_3f

    if-gez p0, :cond_20

    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract a(Lcom/fyber/inneractive/sdk/protobuf/h;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a([BIII)V
.end method

.method public abstract b(III)I
.end method

.method public abstract b(II)Lcom/fyber/inneractive/sdk/protobuf/i;
.end method

.method public abstract c(I)B
.end method

.method public abstract d(I)B
.end method

.method public abstract e()Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public f()Lcom/fyber/inneractive/sdk/protobuf/i$f;
    .registers 2

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/i$a;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/i$a;-><init>(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-object v0
.end method

.method public abstract g()Lcom/fyber/inneractive/sdk/protobuf/j;
.end method

.method public final h()[B
    .registers 4

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/y;->b:[B

    return-object v0

    :cond_9
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a([BIII)V

    return-object v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i;->a:I

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->b(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :cond_10
    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i;->a:I

    :cond_12
    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result v1

    if-nez v1, :cond_b

    const-string v0, ""

    goto :goto_f

    :cond_b
    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i;->f()Lcom/fyber/inneractive/sdk/protobuf/i$f;

    move-result-object v0

    return-object v0
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_28

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/protobuf/i1;->a(Lcom/fyber/inneractive/sdk/protobuf/i;)Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/i;->b(II)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v3

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/protobuf/i1;->a(Lcom/fyber/inneractive/sdk/protobuf/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_43
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.fyber.inneractive.sdk.protobuf.i.a (com.fyber.inneractive.sdk.protobuf.i$a)
.class public Lcom/fyber/inneractive/sdk/protobuf/i$a;
.super Lcom/fyber/inneractive/sdk/protobuf/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/protobuf/i;->f()Lcom/fyber/inneractive/sdk/protobuf/i$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final b:I

.field public final synthetic c:Lcom/fyber/inneractive/sdk/protobuf/i;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->c:Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->a:I

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->b:I

    return-void
.end method


# virtual methods
.method public a()B
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->a:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->b:I

    if-ge v0, v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->a:I

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->c:Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->d(I)B

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->a:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$a;->b:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

###### Class com.fyber.inneractive.sdk.protobuf.i.b (com.fyber.inneractive.sdk.protobuf.i$b)
.class public abstract Lcom/fyber/inneractive/sdk/protobuf/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/protobuf/i$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2

    invoke-interface {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$f;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class com.fyber.inneractive.sdk.protobuf.i.c (com.fyber.inneractive.sdk.protobuf.i$c)
.class public final Lcom/fyber/inneractive/sdk/protobuf/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/protobuf/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)[B
    .registers 4

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

###### Class com.fyber.inneractive.sdk.protobuf.i.d (com.fyber.inneractive.sdk.protobuf.i$d)
.class public final Lcom/fyber/inneractive/sdk/protobuf/i$d;
.super Lcom/fyber/inneractive/sdk/protobuf/i$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>([BII)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/i$h;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(III)I

    iput p2, p0, Lcom/fyber/inneractive/sdk/protobuf/i$d;->e:I

    iput p3, p0, Lcom/fyber/inneractive/sdk/protobuf/i$d;->f:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a([BIII)V
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$d;->e:I

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public c(I)B
    .registers 4

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$d;->f:I

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(II)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$d;->e:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public d(I)B
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$d;->e:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$d;->e:I

    return v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$d;->f:I

    return v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i;->h()[B

    move-result-object v0

    new-instance v1, Lcom/fyber/inneractive/sdk/protobuf/i$h;

    invoke-direct {v1, v0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;-><init>([B)V

    return-object v1
.end method

###### Class com.fyber.inneractive.sdk.protobuf.i.e (com.fyber.inneractive.sdk.protobuf.i$e)
.class public interface abstract Lcom/fyber/inneractive/sdk/protobuf/i$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract a([BII)[B
.end method

###### Class com.fyber.inneractive.sdk.protobuf.i.f (com.fyber.inneractive.sdk.protobuf.i$f)
.class public interface abstract Lcom/fyber/inneractive/sdk/protobuf/i$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract a()B
.end method

###### Class com.fyber.inneractive.sdk.protobuf.i.g (com.fyber.inneractive.sdk.protobuf.i$g)
.class public abstract Lcom/fyber/inneractive/sdk/protobuf/i$g;
.super Lcom/fyber/inneractive/sdk/protobuf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/i;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/i$a;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/i$a;-><init>(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-object v0
.end method

###### Class com.fyber.inneractive.sdk.protobuf.i.h (com.fyber.inneractive.sdk.protobuf.i$h)
.class public Lcom/fyber/inneractive/sdk/protobuf/i$h;
.super Lcom/fyber/inneractive/sdk/protobuf/i$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final d:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$g;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->j()I

    move-result v2

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final a(Lcom/fyber/inneractive/sdk/protobuf/h;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->j()I

    move-result v1

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/h;->a([BII)V

    return-void
.end method

.method public a([BIII)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final a(Lcom/fyber/inneractive/sdk/protobuf/i;II)Z
    .registers 9

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result v0

    if-gt p3, v0, :cond_6d

    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result v1

    if-gt v0, v1, :cond_44

    instance-of v1, p1, Lcom/fyber/inneractive/sdk/protobuf/i$h;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/i$h;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->j()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->j()I

    move-result p3

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->j()I

    move-result p1

    add-int/2addr p1, p2

    :goto_27
    if-ge p3, v3, :cond_35

    aget-byte p2, v0, p3

    aget-byte v4, v1, p1

    if-eq p2, v4, :cond_30

    return v2

    :cond_30
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :cond_35
    const/4 p1, 0x1

    return p1

    :cond_37
    invoke-virtual {p1, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->b(II)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->b(II)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(III)I
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->j()I

    move-result v1

    add-int/2addr v1, p2

    sget-object p2, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    move p2, v1

    :goto_a
    add-int v2, v1, p3

    if-ge p2, v2, :cond_16

    mul-int/lit8 p1, p1, 0x1f

    aget-byte v2, v0, p2

    add-int/2addr p1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_16
    return p1
.end method

.method public final b(II)Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 6

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(III)I

    move-result p2

    if-nez p2, :cond_d

    sget-object p1, Lcom/fyber/inneractive/sdk/protobuf/i;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    return-object p1

    :cond_d
    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/i$d;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->j()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lcom/fyber/inneractive/sdk/protobuf/i$d;-><init>([BII)V

    return-object v0
.end method

.method public c(I)B
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public d(I)B
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final e()Z
    .registers 4

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->j()I

    move-result v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/fyber/inneractive/sdk/protobuf/q1;->b([BII)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/fyber/inneractive/sdk/protobuf/i;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/protobuf/i;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->size()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    instance-of v0, p1, Lcom/fyber/inneractive/sdk/protobuf/i$h;

    if-eqz v0, :cond_39

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/i$h;

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i;->a:I

    iget v1, p1, Lcom/fyber/inneractive/sdk/protobuf/i;->a:I

    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    if-eq v0, v1, :cond_30

    return v2

    :cond_30
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->a(Lcom/fyber/inneractive/sdk/protobuf/i;II)Z

    move-result p1

    return p1

    :cond_39
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()Lcom/fyber/inneractive/sdk/protobuf/j;
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->j()I

    move-result v1

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/i$h;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/j;->a([BIIZ)Lcom/fyber/inneractive/sdk/protobuf/j;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/i$h;->d:[B

    array-length v0, v0

    return v0
.end method

###### Class com.fyber.inneractive.sdk.protobuf.i.C0195i (com.fyber.inneractive.sdk.protobuf.i$i)
.class public final Lcom/fyber/inneractive/sdk/protobuf/i$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/protobuf/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)[B
    .registers 6

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
