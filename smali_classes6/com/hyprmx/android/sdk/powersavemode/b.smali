###### Class com.hyprmx.android.sdk.powersavemode.b (com.hyprmx.android.sdk.powersavemode.b)
.class public final Lcom/hyprmx/android/sdk/powersavemode/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;Landroid/os/PowerManager;Lkotlinx/coroutines/s;)Lcom/hyprmx/android/sdk/powersavemode/DefaultPowerSaveModeListener;
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "powerManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/powersavemode/DefaultPowerSaveModeListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyprmx/android/sdk/powersavemode/DefaultPowerSaveModeListener;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lkotlinx/coroutines/s;)V

    return-object v0
.end method
