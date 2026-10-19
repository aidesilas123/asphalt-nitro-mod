###### Class com.google.protobuf.DoubleValueKtKt (com.google.protobuf.DoubleValueKtKt)
.class public final Lcom/google/protobuf/DoubleValueKtKt;
.super Ljava/lang/Object;
.source "DoubleValueKt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u0007\u001a)\u0010\u0008\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\t"
    }
    d2 = {
        "doubleValue",
        "Lcom/google/protobuf/DoubleValue;",
        "block",
        "Lkotlin/Function1;",
        "Lcom/google/protobuf/DoubleValueKt$Dsl;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "-initializedoubleValue",
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
.method public static final -initializedoubleValue(Lkotlin/jvm/b/l;)Lcom/google/protobuf/DoubleValue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcom/google/protobuf/m;",
            "Lkotlin/v;",
            ">;)",
            "Lcom/google/protobuf/DoubleValue;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/protobuf/m;->Companion:Lcom/google/protobuf/m$a;

    invoke-static {}, Lcom/google/protobuf/DoubleValue;->newBuilder()Lcom/google/protobuf/DoubleValue$b;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/protobuf/m$a;->_create(Lcom/google/protobuf/DoubleValue$b;)Lcom/google/protobuf/m;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/protobuf/m;->_build()Lcom/google/protobuf/DoubleValue;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lcom/google/protobuf/DoubleValue;Lkotlin/jvm/b/l;)Lcom/google/protobuf/DoubleValue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/DoubleValue;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcom/google/protobuf/m;",
            "Lkotlin/v;",
            ">;)",
            "Lcom/google/protobuf/DoubleValue;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/protobuf/m;->Companion:Lcom/google/protobuf/m$a;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    const-string v1, "this.toBuilder()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/protobuf/DoubleValue$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/m$a;->_create(Lcom/google/protobuf/DoubleValue$b;)Lcom/google/protobuf/m;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/m;->_build()Lcom/google/protobuf/DoubleValue;

    move-result-object p0

    return-object p0
.end method
