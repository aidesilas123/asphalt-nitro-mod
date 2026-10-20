###### Class kotlin.reflect.jvm.internal.impl.protobuf.n.d (kotlin.reflect.jvm.internal.impl.protobuf.n$d)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

.field private b:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

.field c:I

.field final synthetic d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)V
    .registers 4

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->i()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->size()I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;Lkotlin/reflect/jvm/internal/impl/protobuf/n$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Byte;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->c:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->b()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n$c;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/i;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/i;->i()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    :cond_14
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->c:I

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/n$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$a;->nextByte()B

    move-result v0

    return v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
