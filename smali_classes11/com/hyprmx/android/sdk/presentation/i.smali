###### Class com.hyprmx.android.sdk.presentation.i (com.hyprmx.android.sdk.presentation.i)
.class public final Lcom/hyprmx/android/sdk/presentation/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hyprmx/android/sdk/core/js/a;Ljava/lang/String;)Lcom/hyprmx/android/sdk/presentation/e;
    .registers 4

    const-string v0, "jsEngine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HYPRPresentationController.bindBannerViewModel(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/hyprmx/android/sdk/core/js/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_27

    const-string p1, ""

    :cond_27
    new-instance v0, Lcom/hyprmx/android/sdk/presentation/e;

    const-string v1, "ViewModelController.removeViewModel"

    invoke-direct {v0, p0, p1, v1}, Lcom/hyprmx/android/sdk/presentation/e;-><init>(Lcom/hyprmx/android/sdk/core/js/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b(Lcom/hyprmx/android/sdk/core/js/a;Ljava/lang/String;)Lcom/hyprmx/android/sdk/presentation/e;
    .registers 4

    const-string v0, "jsEngine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/presentation/e;

    const-string v1, "ViewModelController.removeViewModel"

    invoke-direct {v0, p0, p1, v1}, Lcom/hyprmx/android/sdk/presentation/e;-><init>(Lcom/hyprmx/android/sdk/core/js/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final c(Lcom/hyprmx/android/sdk/core/js/a;Ljava/lang/String;)Lcom/hyprmx/android/sdk/presentation/e;
    .registers 4

    const-string v0, "jsEngine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/presentation/e;

    const-string v1, "ViewModelController.removeViewModel"

    invoke-direct {v0, p0, p1, v1}, Lcom/hyprmx/android/sdk/presentation/e;-><init>(Lcom/hyprmx/android/sdk/core/js/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
