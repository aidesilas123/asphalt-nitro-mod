###### Class com.hyprmx.android.sdk.model.vast.e (com.hyprmx.android.sdk.model.vast.e)
.class public final Lcom/hyprmx/android/sdk/model/vast/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyprmx/android/sdk/model/vast/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyprmx/android/sdk/model/vast/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>()V
    .registers 9

    new-instance v5, Lcom/hyprmx/android/sdk/model/vast/f;

    invoke-direct {v5}, Lcom/hyprmx/android/sdk/model/vast/f;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/hyprmx/android/sdk/model/vast/e;-><init>(JJLcom/hyprmx/android/sdk/model/vast/f;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(JJLcom/hyprmx/android/sdk/model/vast/f;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/hyprmx/android/sdk/model/vast/f;",
            "Ljava/util/List<",
            "Lcom/hyprmx/android/sdk/model/vast/g;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hyprmx/android/sdk/model/vast/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mediaFile"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "trackings"

    invoke-static {p6, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "videoClicks"

    invoke-static {p7, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/hyprmx/android/sdk/model/vast/e;->a:J

    iput-wide p3, p0, Lcom/hyprmx/android/sdk/model/vast/e;->b:J

    iput-object p6, p0, Lcom/hyprmx/android/sdk/model/vast/e;->c:Ljava/util/List;

    iput-object p7, p0, Lcom/hyprmx/android/sdk/model/vast/e;->d:Ljava/util/List;

    return-void
.end method
