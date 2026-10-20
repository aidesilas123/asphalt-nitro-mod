###### Class com.moat.analytics.mobile.glft.MoatOptions (com.moat.analytics.mobile.glft.MoatOptions)
.class public Lcom/moat/analytics/mobile/glft/MoatOptions;
.super Ljava/lang/Object;


# instance fields
.field public disableAdIdCollection:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/MoatOptions;->disableAdIdCollection:Z

    return-void
.end method
