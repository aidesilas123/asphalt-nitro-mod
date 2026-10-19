###### Class com.unity3d.scar.adapter.v2100.a.b (com.unity3d.scar.adapter.v2100.a$b)
.class Lcom/unity3d/scar/adapter/v2100/a$b;
.super Ljava/lang/Object;
.source "ScarAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/v2100/a;->e(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/common/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2100/c/g;

.field final synthetic b:Lcom/unity3d/scar/adapter/common/scarads/c;

.field final synthetic c:Lcom/unity3d/scar/adapter/v2100/a;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2100/a;Lcom/unity3d/scar/adapter/v2100/c/g;Lcom/unity3d/scar/adapter/common/scarads/c;)V
    .registers 4

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/a$b;->c:Lcom/unity3d/scar/adapter/v2100/a;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2100/a$b;->a:Lcom/unity3d/scar/adapter/v2100/c/g;

    iput-object p3, p0, Lcom/unity3d/scar/adapter/v2100/a$b;->b:Lcom/unity3d/scar/adapter/common/scarads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/a$b;->a:Lcom/unity3d/scar/adapter/v2100/c/g;

    new-instance v1, Lcom/unity3d/scar/adapter/v2100/a$b$a;

    invoke-direct {v1, p0}, Lcom/unity3d/scar/adapter/v2100/a$b$a;-><init>(Lcom/unity3d/scar/adapter/v2100/a$b;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/v2100/c/a;->a(Lcom/unity3d/scar/adapter/common/scarads/b;)V

    return-void
.end method
