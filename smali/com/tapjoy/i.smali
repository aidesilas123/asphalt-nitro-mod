###### Class com.tapjoy.i (com.tapjoy.i)
.class public final synthetic Lcom/tapjoy/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/tapjoy/TJOfferwallDiscoverListener;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/tapjoy/TJOfferwallDiscoverListener;Ljava/lang/String;FFFF)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/i;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tapjoy/i;->b:Lcom/tapjoy/TJOfferwallDiscoverListener;

    iput-object p3, p0, Lcom/tapjoy/i;->c:Ljava/lang/String;

    iput p4, p0, Lcom/tapjoy/i;->d:F

    iput p5, p0, Lcom/tapjoy/i;->e:F

    iput p6, p0, Lcom/tapjoy/i;->f:F

    iput p7, p0, Lcom/tapjoy/i;->g:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/tapjoy/i;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tapjoy/i;->b:Lcom/tapjoy/TJOfferwallDiscoverListener;

    iget-object v2, p0, Lcom/tapjoy/i;->c:Ljava/lang/String;

    iget v3, p0, Lcom/tapjoy/i;->d:F

    iget v4, p0, Lcom/tapjoy/i;->e:F

    iget v5, p0, Lcom/tapjoy/i;->f:F

    iget v6, p0, Lcom/tapjoy/i;->g:F

    invoke-static/range {v0 .. v6}, Lcom/tapjoy/TapjoyPluginAPI;->a(Landroid/app/Activity;Lcom/tapjoy/TJOfferwallDiscoverListener;Ljava/lang/String;FFFF)V

    return-void
.end method
