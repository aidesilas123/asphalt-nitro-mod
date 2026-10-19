###### Class com.tapjoy.internal.h4 (com.tapjoy.internal.h4)
.class public final Lcom/tapjoy/internal/h4;
.super Lcom/tapjoy/TJContentActivity$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/g2;

.field public final synthetic b:Lcom/tapjoy/internal/i6;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/i6;Lcom/tapjoy/internal/g2;)V
    .registers 3

    iput-object p1, p0, Lcom/tapjoy/internal/h4;->b:Lcom/tapjoy/internal/i6;

    iput-object p2, p0, Lcom/tapjoy/internal/h4;->a:Lcom/tapjoy/internal/g2;

    invoke-direct {p0}, Lcom/tapjoy/TJContentActivity$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss(Landroid/app/Activity;)V
    .registers 2

    iget-object p1, p0, Lcom/tapjoy/internal/h4;->b:Lcom/tapjoy/internal/i6;

    iget-object p1, p1, Lcom/tapjoy/internal/i6;->h:Lcom/tapjoy/internal/d;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_9
    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/h4;->b:Lcom/tapjoy/internal/i6;

    iget-object v1, p0, Lcom/tapjoy/internal/h4;->a:Lcom/tapjoy/internal/g2;

    invoke-virtual {v0, p1, v1}, Lcom/tapjoy/internal/i6;->d(Landroid/app/Activity;Lcom/tapjoy/internal/g2;)V
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_14

    :catch_8
    iget-object p1, p0, Lcom/tapjoy/internal/h4;->b:Lcom/tapjoy/internal/i6;

    iget-object v0, p1, Lcom/tapjoy/internal/i6;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/h4;->a:Lcom/tapjoy/internal/g2;

    iget-object p1, p1, Lcom/tapjoy/internal/x0;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/tapjoy/internal/g2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/a;)V

    :goto_14
    return-void
.end method
