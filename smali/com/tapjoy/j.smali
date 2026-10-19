###### Class com.tapjoy.j (com.tapjoy.j)
.class public final synthetic Lcom/tapjoy/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;FF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/j;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/tapjoy/j;->b:F

    iput p3, p0, Lcom/tapjoy/j;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/j;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/tapjoy/j;->b:F

    iget v2, p0, Lcom/tapjoy/j;->c:F

    invoke-static {v0, v1, v2}, Lcom/tapjoy/TapjoyPluginAPI;->a(Landroid/app/Activity;FF)V

    return-void
.end method
