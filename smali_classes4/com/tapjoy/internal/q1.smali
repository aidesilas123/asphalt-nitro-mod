###### Class com.tapjoy.internal.q1 (com.tapjoy.internal.q1)
.class public abstract Lcom/tapjoy/internal/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/tapjoy/internal/e2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/e2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/q1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tapjoy/internal/q1;->b:Lcom/tapjoy/internal/e2;

    return-void
.end method
