###### Class com.unity3d.scar.adapter.common.i.a (com.unity3d.scar.adapter.common.i$a)
.class Lcom/unity3d/scar/adapter/common/i$a;
.super Ljava/lang/Object;
.source "ScarAdapterBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/common/i;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/unity3d/scar/adapter/common/i;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/common/i;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/i$a;->b:Lcom/unity3d/scar/adapter/common/i;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/common/i$a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/i$a;->b:Lcom/unity3d/scar/adapter/common/i;

    iget-object v0, v0, Lcom/unity3d/scar/adapter/common/i;->c:Lcom/unity3d/scar/adapter/common/scarads/a;

    iget-object v1, p0, Lcom/unity3d/scar/adapter/common/i$a;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/unity3d/scar/adapter/common/scarads/a;->show(Landroid/app/Activity;)V

    return-void
.end method
