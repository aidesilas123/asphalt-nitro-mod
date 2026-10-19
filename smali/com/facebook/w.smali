###### Class com.facebook.w (com.facebook.w)
.class public final synthetic Lcom/facebook/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/w;->a:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-wide v0, p0, Lcom/facebook/w;->a:J

    invoke-static {v0, v1}, Lcom/facebook/UserSettingsManager;->a(J)V

    return-void
.end method
