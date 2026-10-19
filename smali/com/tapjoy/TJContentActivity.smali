###### Class com.tapjoy.TJContentActivity (com.tapjoy.TJContentActivity)
.class public Lcom/tapjoy/TJContentActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJContentActivity$ContentProducer;,
        Lcom/tapjoy/TJContentActivity$a;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/tapjoy/TJContentActivity$ContentProducer;


# instance fields
.field public b:Lcom/tapjoy/TJContentActivity$ContentProducer;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/tapjoy/TJContentActivity$ContentProducer;Z)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tapjoy/TJContentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10810000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Lcom/tapjoy/TJContentActivity;->toIdentityString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tapjoy.internal.content.producer.id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.tapjoy.internal.content.fullscreen"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class p2, Lcom/tapjoy/TJContentActivity;

    monitor-enter p2

    :try_start_1d
    sput-object p1, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    monitor-exit p2

    return-void

    :catchall_24
    move-exception p0

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_24

    throw p0
.end method

.method public static toIdentityString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tapjoy/TJContentActivity$ContentProducer;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.tapjoy.internal.content.producer.id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    :goto_14
    const/4 v0, 0x0

    goto :goto_4a

    :cond_16
    const-class v3, Lcom/tapjoy/TJContentActivity;

    monitor-enter v3

    :try_start_19
    sget-object v4, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    if-eqz v4, :cond_48

    sget-object v4, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-static {v4}, Lcom/tapjoy/TJContentActivity;->toIdentityString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    sget-object v1, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    iput-object v1, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    const/4 v1, 0x0

    sput-object v1, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_50

    const-string v1, "com.tapjoy.internal.content.fullscreen"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_42
    iget-object p1, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-interface {p1, p0}, Lcom/tapjoy/TJContentActivity$ContentProducer;->show(Landroid/app/Activity;)V

    goto :goto_4a

    :cond_48
    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_50

    goto :goto_14

    :goto_4a
    if-nez v0, :cond_4f

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4f
    return-void

    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public final onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/tapjoy/TJContentActivity$ContentProducer;->dismiss(Landroid/app/Activity;)V

    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    iget-boolean v0, v0, Lcom/tapjoy/internal/v1;->m:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    invoke-static {p0}, Lcom/tapjoy/internal/t1;->a(Landroid/app/Activity;)V

    :cond_f
    return-void
.end method

.method public final onStop()V
    .registers 3

    iget-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    invoke-static {p0}, Lcom/tapjoy/internal/t1;->b(Landroid/app/Activity;)V

    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
