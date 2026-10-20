###### Class com.tapjoy.internal.u8 (com.tapjoy.internal.u8)
.class public final Lcom/tapjoy/internal/u8;
.super Lcom/tapjoy/t;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJEventOptimizer;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJEventOptimizer;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/u8;->a:Lcom/tapjoy/TJEventOptimizer;

    invoke-direct {p0}, Lcom/tapjoy/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/u8;->a:Lcom/tapjoy/TJEventOptimizer;

    iget-object v0, v0, Lcom/tapjoy/TJEventOptimizer;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/u8;->a:Lcom/tapjoy/TJEventOptimizer;

    return-object v0
.end method
