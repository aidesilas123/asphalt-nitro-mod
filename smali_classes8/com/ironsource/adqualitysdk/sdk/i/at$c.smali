###### Class com.ironsource.adqualitysdk.sdk.i.at.c (com.ironsource.adqualitysdk.sdk.i.at$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/at$c;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ci;

.field private synthetic f:Z

.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/at;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ci;Z)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/at$c;->g:Lcom/ironsource/adqualitysdk/sdk/i/at;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/at$c;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/at$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    iput-boolean p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/at$c;->f:Z

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/at$c;->g:Lcom/ironsource/adqualitysdk/sdk/i/at;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/at$c;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/at;->a(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/av;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/at$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/av;->d(Lcom/ironsource/adqualitysdk/sdk/i/ci;)V

    :cond_f
    return-void
.end method
