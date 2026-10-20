###### Class gateway.v1.AdOperationsConfigurationKtKt (gateway.v1.AdOperationsConfigurationKtKt)
.class public final Lgateway/v1/AdOperationsConfigurationKtKt;
.super Ljava/lang/Object;
.source "AdOperationsConfigurationKt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u0007\u001a)\u0010\u0008\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\t"
    }
    d2 = {
        "adOperationsConfiguration",
        "Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;",
        "block",
        "Lkotlin/Function1;",
        "Lgateway/v1/AdOperationsConfigurationKt$Dsl;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "-initializeadOperationsConfiguration",
        "copy",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final -initializeadOperationsConfiguration(Lkotlin/jvm/b/l;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lgateway/v1/c;",
            "Lkotlin/v;",
            ">;)",
            "Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgateway/v1/c;->a:Lgateway/v1/c$a;

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->newBuilder()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/c$a;->a(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;)Lgateway/v1/c;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lgateway/v1/c;->a()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;Lkotlin/jvm/b/l;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lgateway/v1/c;",
            "Lkotlin/v;",
            ">;)",
            "Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgateway/v1/c;->a:Lgateway/v1/c$a;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    const-string v1, "this.toBuilder()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;

    invoke-virtual {v0, p0}, Lgateway/v1/c$a;->a(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;)Lgateway/v1/c;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgateway/v1/c;->a()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    move-result-object p0

    return-object p0
.end method
