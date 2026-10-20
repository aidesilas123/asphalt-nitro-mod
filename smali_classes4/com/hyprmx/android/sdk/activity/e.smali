###### Class com.hyprmx.android.sdk.activity.e (com.hyprmx.android.sdk.activity.e)
.class public final Lcom/hyprmx/android/sdk/activity/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/activity/g0;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/presentation/a;

.field public final b:Lcom/hyprmx/android/sdk/utility/f0;

.field public final c:Lcom/hyprmx/android/sdk/api/data/r;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyprmx/android/sdk/api/data/o;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lkotlinx/coroutines/s;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/presentation/b;Lcom/hyprmx/android/sdk/utility/f0;Lcom/hyprmx/android/sdk/model/a;Lcom/hyprmx/android/sdk/api/data/r;Ljava/util/List;Lkotlinx/coroutines/s;)V
    .registers 8

    const-string v0, "activityResultListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageCacheManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadedVastData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "uiComponents"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "requiredInformation"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "scope"

    invoke-static {p6, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/e;->a:Lcom/hyprmx/android/sdk/presentation/a;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/e;->b:Lcom/hyprmx/android/sdk/utility/f0;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/activity/e;->c:Lcom/hyprmx/android/sdk/api/data/r;

    iput-object p5, p0, Lcom/hyprmx/android/sdk/activity/e;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/hyprmx/android/sdk/activity/e;->e:Lkotlinx/coroutines/s;

    return-void
.end method


# virtual methods
.method public final a(Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;)Lcom/hyprmx/android/sdk/activity/k0;
    .registers 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/hyprmx/android/sdk/activity/k0;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/e;->a:Lcom/hyprmx/android/sdk/presentation/a;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/e;->b:Lcom/hyprmx/android/sdk/utility/f0;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/activity/e;->c:Lcom/hyprmx/android/sdk/api/data/r;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/activity/e;->d:Ljava/util/List;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/activity/e;->e:Lkotlinx/coroutines/s;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/hyprmx/android/sdk/activity/k0;-><init>(Lcom/hyprmx/android/sdk/presentation/a;Lcom/hyprmx/android/sdk/utility/f0;Lcom/hyprmx/android/sdk/api/data/r;Ljava/util/List;Lkotlinx/coroutines/s;)V

    return-object p1
.end method
