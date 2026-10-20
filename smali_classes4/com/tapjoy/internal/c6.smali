###### Class com.tapjoy.internal.c6 (com.tapjoy.internal.c6)
.class public final Lcom/tapjoy/internal/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lcom/tapjoy/o;


# direct methods
.method public constructor <init>(Lcom/tapjoy/o;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/tapjoy/internal/c6;->b:Lcom/tapjoy/o;

    iput-object p2, p0, Lcom/tapjoy/internal/c6;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/c6;->b:Lcom/tapjoy/o;

    iget-object v0, v0, Lcom/tapjoy/o;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/internal/c6;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
