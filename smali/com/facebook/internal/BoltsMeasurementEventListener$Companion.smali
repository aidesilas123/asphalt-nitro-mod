###### Class com.facebook.internal.BoltsMeasurementEventListener.Companion (com.facebook.internal.BoltsMeasurementEventListener$Companion)
.class public final Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;
.super Ljava/lang/Object;
.source "BoltsMeasurementEventListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/BoltsMeasurementEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getMEASUREMENT_EVENT_NOTIFICATION_NAME$facebook_core_release$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/internal/BoltsMeasurementEventListener;->access$getSingleton$cp()Lcom/facebook/internal/BoltsMeasurementEventListener;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/facebook/internal/BoltsMeasurementEventListener;->access$getSingleton$cp()Lcom/facebook/internal/BoltsMeasurementEventListener;

    move-result-object p1

    return-object p1

    :cond_10
    new-instance v0, Lcom/facebook/internal/BoltsMeasurementEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/internal/BoltsMeasurementEventListener;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/n;)V

    invoke-static {v0}, Lcom/facebook/internal/BoltsMeasurementEventListener;->access$open(Lcom/facebook/internal/BoltsMeasurementEventListener;)V

    invoke-static {v0}, Lcom/facebook/internal/BoltsMeasurementEventListener;->access$setSingleton$cp(Lcom/facebook/internal/BoltsMeasurementEventListener;)V

    invoke-static {}, Lcom/facebook/internal/BoltsMeasurementEventListener;->access$getSingleton$cp()Lcom/facebook/internal/BoltsMeasurementEventListener;

    move-result-object p1

    return-object p1
.end method

.method public final getMEASUREMENT_EVENT_NOTIFICATION_NAME$facebook_core_release()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/facebook/internal/BoltsMeasurementEventListener;->access$getMEASUREMENT_EVENT_NOTIFICATION_NAME$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
