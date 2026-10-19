###### Class com.google.protobuf.ValueKtKt (com.google.protobuf.ValueKtKt)
.class public final Lcom/google/protobuf/ValueKtKt;
.super Ljava/lang/Object;
.source "ValueKt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a*\u0010\t\u001a\u00020\n2\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0002\u0008\u000fH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u0010\u001a)\u0010\u0011\u001a\u00020\n*\u00020\n2\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0002\u0008\u000fH\u0086\u0008\u00f8\u0001\u0000\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "listValueOrNull",
        "Lcom/google/protobuf/ListValue;",
        "Lcom/google/protobuf/ValueOrBuilder;",
        "getListValueOrNull",
        "(Lcom/google/protobuf/ValueOrBuilder;)Lcom/google/protobuf/ListValue;",
        "structValueOrNull",
        "Lcom/google/protobuf/Struct;",
        "getStructValueOrNull",
        "(Lcom/google/protobuf/ValueOrBuilder;)Lcom/google/protobuf/Struct;",
        "value",
        "Lcom/google/protobuf/Value;",
        "block",
        "Lkotlin/Function1;",
        "Lcom/google/protobuf/ValueKt$Dsl;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "-initializevalue",
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
.method public static final -initializevalue(Lkotlin/jvm/b/l;)Lcom/google/protobuf/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcom/google/protobuf/d2;",
            "Lkotlin/v;",
            ">;)",
            "Lcom/google/protobuf/Value;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/protobuf/d2;->Companion:Lcom/google/protobuf/d2$a;

    invoke-static {}, Lcom/google/protobuf/Value;->newBuilder()Lcom/google/protobuf/Value$b;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d2$a;->_create(Lcom/google/protobuf/Value$b;)Lcom/google/protobuf/d2;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/protobuf/d2;->_build()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lcom/google/protobuf/Value;Lkotlin/jvm/b/l;)Lcom/google/protobuf/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Value;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcom/google/protobuf/d2;",
            "Lkotlin/v;",
            ">;)",
            "Lcom/google/protobuf/Value;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/protobuf/d2;->Companion:Lcom/google/protobuf/d2$a;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    const-string v1, "this.toBuilder()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/protobuf/Value$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/d2$a;->_create(Lcom/google/protobuf/Value$b;)Lcom/google/protobuf/d2;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d2;->_build()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method public static final getListValueOrNull(Lcom/google/protobuf/e2;)Lcom/google/protobuf/ListValue;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/google/protobuf/e2;->hasListValue()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lcom/google/protobuf/e2;->getListValue()Lcom/google/protobuf/ListValue;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getStructValueOrNull(Lcom/google/protobuf/e2;)Lcom/google/protobuf/Struct;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/google/protobuf/e2;->hasStructValue()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lcom/google/protobuf/e2;->getStructValue()Lcom/google/protobuf/Struct;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method
