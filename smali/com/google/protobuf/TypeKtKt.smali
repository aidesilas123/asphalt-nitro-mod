###### Class com.google.protobuf.TypeKtKt (com.google.protobuf.TypeKtKt)
.class public final Lcom/google/protobuf/TypeKtKt;
.super Ljava/lang/Object;
.source "TypeKt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a*\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000bH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u000c\u001a)\u0010\r\u001a\u00020\u0006*\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000bH\u0086\u0008\u00f8\u0001\u0000\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000e"
    }
    d2 = {
        "sourceContextOrNull",
        "Lcom/google/protobuf/SourceContext;",
        "Lcom/google/protobuf/TypeOrBuilder;",
        "getSourceContextOrNull",
        "(Lcom/google/protobuf/TypeOrBuilder;)Lcom/google/protobuf/SourceContext;",
        "type",
        "Lcom/google/protobuf/Type;",
        "block",
        "Lkotlin/Function1;",
        "Lcom/google/protobuf/TypeKt$Dsl;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "-initializetype",
        "copy",
        "protobuf-kotlin-lite"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final -initializetype(Lkotlin/jvm/b/l;)Lcom/google/protobuf/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcom/google/protobuf/t1;",
            "Lkotlin/v;",
            ">;)",
            "Lcom/google/protobuf/Type;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/protobuf/t1;->Companion:Lcom/google/protobuf/t1$a;

    invoke-static {}, Lcom/google/protobuf/Type;->newBuilder()Lcom/google/protobuf/Type$b;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/protobuf/t1$a;->_create(Lcom/google/protobuf/Type$b;)Lcom/google/protobuf/t1;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/protobuf/t1;->_build()Lcom/google/protobuf/Type;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lcom/google/protobuf/Type;Lkotlin/jvm/b/l;)Lcom/google/protobuf/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Type;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcom/google/protobuf/t1;",
            "Lkotlin/v;",
            ">;)",
            "Lcom/google/protobuf/Type;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/protobuf/t1;->Companion:Lcom/google/protobuf/t1$a;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    const-string v1, "this.toBuilder()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/protobuf/Type$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t1$a;->_create(Lcom/google/protobuf/Type$b;)Lcom/google/protobuf/t1;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/t1;->_build()Lcom/google/protobuf/Type;

    move-result-object p0

    return-object p0
.end method

.method public static final getSourceContextOrNull(Lcom/google/protobuf/u1;)Lcom/google/protobuf/SourceContext;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/google/protobuf/u1;->hasSourceContext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lcom/google/protobuf/u1;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method
