###### Class com.facebook.appevents.internal.e (com.facebook.appevents.internal.e)
.class public final synthetic Lcom/facebook/appevents/internal/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/appevents/internal/e;->a:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-wide v0, p0, Lcom/facebook/appevents/internal/e;->a:J

    iget-object v2, p0, Lcom/facebook/appevents/internal/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e(JLjava/lang/String;)V

    return-void
.end method
