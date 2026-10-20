###### Class kotlinx.serialization.json.internal.JsonIteratorArrayWrapped (kotlinx.serialization.json.internal.y)
.class final Lkotlinx/serialization/json/internal/y;
.super Ljava/lang/Object;
.source "JsonIterator.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/p0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/p0/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u000c\u001a\u00020\u000bH\u0096\u0002J\u000e\u0010\r\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eR\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonIteratorArrayWrapped;",
        "T",
        "",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "lexer",
        "Lkotlinx/serialization/json/internal/ReaderJsonLexer;",
        "deserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/ReaderJsonLexer;Lkotlinx/serialization/DeserializationStrategy;)V",
        "first",
        "",
        "hasNext",
        "next",
        "()Ljava/lang/Object;",
        "kotlinx-serialization-json"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lkotlinx/serialization/json/Json;

.field private final b:Lkotlinx/serialization/json/internal/n0;

.field private final c:Lkotlinx/serialization/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/n0;Lkotlinx/serialization/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlinx/serialization/json/internal/n0;",
            "Lkotlinx/serialization/b<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/y;->a:Lkotlinx/serialization/json/Json;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/y;->b:Lkotlinx/serialization/json/internal/n0;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/y;->c:Lkotlinx/serialization/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/y;->d:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 8

    iget-object v0, p0, Lkotlinx/serialization/json/internal/y;->b:Lkotlinx/serialization/json/internal/n0;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->E()B

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lkotlinx/serialization/json/internal/y;->b:Lkotlinx/serialization/json/internal/n0;

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->m(B)B

    iget-object v0, p0, Lkotlinx/serialization/json/internal/y;->b:Lkotlinx/serialization/json/internal/n0;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->C()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lkotlinx/serialization/json/internal/y;->b:Lkotlinx/serialization/json/internal/n0;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->E()B

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lkotlinx/serialization/json/internal/y;->b:Lkotlinx/serialization/json/internal/n0;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->v()V

    goto :goto_38

    :cond_27
    iget-object v1, p0, Lkotlinx/serialization/json/internal/y;->b:Lkotlinx/serialization/json/internal/n0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "There is a start of the new array after the one parsed to sequence. ARRAY_WRAPPED mode doesn\'t merge consecutive arrays.\nIf you need to parse a stream of arrays, please use WHITESPACE_SEPARATED mode instead."

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0

    :cond_38
    :goto_38
    const/4 v0, 0x0

    return v0

    :cond_3a
    iget-object v0, p0, Lkotlinx/serialization/json/internal/y;->b:Lkotlinx/serialization/json/internal/n0;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->C()Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    return v0

    :cond_44
    iget-object v0, p0, Lkotlinx/serialization/json/internal/y;->b:Lkotlinx/serialization/json/internal/n0;

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->x(B)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/y;->d:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/y;->d:Z

    goto :goto_f

    :cond_8
    iget-object v0, p0, Lkotlinx/serialization/json/internal/y;->b:Lkotlinx/serialization/json/internal/n0;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->n(C)V

    :goto_f
    new-instance v0, Lkotlinx/serialization/json/internal/p0;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/y;->a:Lkotlinx/serialization/json/Json;

    sget-object v4, Lkotlinx/serialization/json/internal/WriteMode;->a:Lkotlinx/serialization/json/internal/WriteMode;

    iget-object v5, p0, Lkotlinx/serialization/json/internal/y;->b:Lkotlinx/serialization/json/internal/n0;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/y;->c:Lkotlinx/serialization/b;

    invoke-interface {v1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/json/internal/p0;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/p0$a;)V

    iget-object v1, p0, Lkotlinx/serialization/json/internal/y;->c:Lkotlinx/serialization/b;

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/p0;->G(Lkotlinx/serialization/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
