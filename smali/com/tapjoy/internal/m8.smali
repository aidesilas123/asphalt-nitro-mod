###### Class com.tapjoy.internal.m8 (com.tapjoy.internal.m8)
.class public final Lcom/tapjoy/internal/m8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/m8;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    iget-object v1, p0, Lcom/tapjoy/internal/m8;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/internal/e;->a()V

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tapjoy/internal/v1;->m:Z

    invoke-static {v1}, Lcom/tapjoy/internal/t1;->a(Landroid/app/Activity;)V

    return-void
.end method
