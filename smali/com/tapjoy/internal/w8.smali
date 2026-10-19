###### Class com.tapjoy.internal.w8 (com.tapjoy.internal.w8)
.class public final Lcom/tapjoy/internal/w8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/w8;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    iget-object v1, p0, Lcom/tapjoy/internal/w8;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/internal/e;->a()V

    invoke-static {v1}, Lcom/tapjoy/internal/t1;->b(Landroid/app/Activity;)V

    return-void
.end method
