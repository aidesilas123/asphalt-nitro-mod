###### Class com.unity3d.scar.adapter.v2000.a.c (com.unity3d.scar.adapter.v2000.a$c)
.class Lcom/unity3d/scar/adapter/v2000/a$c;
.super Ljava/lang/Object;
.source "ScarAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/v2000/a;->c(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/unity3d/scar/adapter/common/scarads/c;IILcom/unity3d/scar/adapter/common/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/b/c;

.field final synthetic b:Lcom/unity3d/scar/adapter/v2000/a;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/a;Lcom/unity3d/scar/adapter/v2000/b/c;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/a$c;->b:Lcom/unity3d/scar/adapter/v2000/a;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2000/a$c;->a:Lcom/unity3d/scar/adapter/v2000/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/a$c;->a:Lcom/unity3d/scar/adapter/v2000/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/v2000/b/a;->a(Lcom/unity3d/scar/adapter/common/scarads/b;)V

    return-void
.end method
