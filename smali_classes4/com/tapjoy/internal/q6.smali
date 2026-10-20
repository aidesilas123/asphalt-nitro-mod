###### Class com.tapjoy.internal.q6 (com.tapjoy.internal.q6)
.class public final Lcom/tapjoy/internal/q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/o7;

.field public final synthetic b:Landroid/widget/RelativeLayout;

.field public final synthetic c:Lcom/tapjoy/internal/o7;

.field public final synthetic d:Lcom/tapjoy/internal/u0;

.field public final synthetic e:Lcom/tapjoy/internal/b7;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/b7;Lcom/tapjoy/internal/o7;Landroid/widget/RelativeLayout;Lcom/tapjoy/internal/o7;Lcom/tapjoy/internal/u0;)V
    .registers 6

    iput-object p1, p0, Lcom/tapjoy/internal/q6;->e:Lcom/tapjoy/internal/b7;

    iput-object p2, p0, Lcom/tapjoy/internal/q6;->a:Lcom/tapjoy/internal/o7;

    iput-object p3, p0, Lcom/tapjoy/internal/q6;->b:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/tapjoy/internal/q6;->c:Lcom/tapjoy/internal/o7;

    iput-object p5, p0, Lcom/tapjoy/internal/q6;->d:Lcom/tapjoy/internal/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget-object p1, p0, Lcom/tapjoy/internal/q6;->a:Lcom/tapjoy/internal/o7;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/tapjoy/internal/o7;->b()V

    iget-object p1, p0, Lcom/tapjoy/internal/q6;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tapjoy/internal/q6;->a:Lcom/tapjoy/internal/o7;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_e
    iget-object p1, p0, Lcom/tapjoy/internal/q6;->c:Lcom/tapjoy/internal/o7;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/tapjoy/internal/o7;->b()V

    iget-object p1, p0, Lcom/tapjoy/internal/q6;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tapjoy/internal/q6;->c:Lcom/tapjoy/internal/o7;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1c
    iget-object p1, p0, Lcom/tapjoy/internal/q6;->e:Lcom/tapjoy/internal/b7;

    iget-object p1, p1, Lcom/tapjoy/internal/b7;->b:Lcom/tapjoy/internal/w7;

    iget-object v0, p0, Lcom/tapjoy/internal/q6;->d:Lcom/tapjoy/internal/u0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/tapjoy/internal/u0;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p1, Lcom/tapjoy/internal/w7;->c:Lcom/tapjoy/internal/p8;

    iget-object v1, v1, Lcom/tapjoy/internal/x0;->b:Lcom/tapjoy/internal/z4;

    iget-object v2, p1, Lcom/tapjoy/internal/w7;->a:Landroid/app/Activity;

    iget-object v3, v0, Lcom/tapjoy/internal/u0;->i:Ljava/lang/String;

    iget-object v4, v0, Lcom/tapjoy/internal/u0;->j:Ljava/lang/String;

    invoke-static {v4}, Lcom/tapjoy/internal/r9;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/tapjoy/internal/z4;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tapjoy/internal/w7;->c:Lcom/tapjoy/internal/p8;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tapjoy/internal/x0;->a:Z

    goto :goto_67

    :cond_44
    iget-object v1, v0, Lcom/tapjoy/internal/u0;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p1, Lcom/tapjoy/internal/w7;->a:Landroid/app/Activity;

    iget-object v2, v0, Lcom/tapjoy/internal/u0;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_57

    goto :goto_67

    :cond_57
    :try_start_57
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_65} :catch_66

    goto :goto_67

    :catch_66
    nop

    :cond_67
    :goto_67
    iget-object v1, p1, Lcom/tapjoy/internal/w7;->b:Lcom/tapjoy/internal/g2;

    iget-object v2, p1, Lcom/tapjoy/internal/w7;->c:Lcom/tapjoy/internal/p8;

    iget-object v2, v2, Lcom/tapjoy/internal/p8;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/g2;->a(Ljava/lang/String;Lcom/tapjoy/internal/a;)V

    iget-boolean v0, v0, Lcom/tapjoy/internal/u0;->k:Z

    if-eqz v0, :cond_7a

    iget-object p1, p1, Lcom/tapjoy/internal/w7;->c:Lcom/tapjoy/internal/p8;

    invoke-virtual {p1}, Lcom/tapjoy/internal/p8;->e()V

    :cond_7a
    return-void
.end method
