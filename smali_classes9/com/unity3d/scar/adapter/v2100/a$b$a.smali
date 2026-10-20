###### Class com.unity3d.scar.adapter.v2100.a.b.C0456a (com.unity3d.scar.adapter.v2100.a$b$a)
.class Lcom/unity3d/scar/adapter/v2100/a$b$a;
.super Ljava/lang/Object;
.source "ScarAdapter.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/scarads/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/v2100/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2100/a$b;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2100/a$b;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/a$b$a;->a:Lcom/unity3d/scar/adapter/v2100/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/a$b$a;->a:Lcom/unity3d/scar/adapter/v2100/a$b;

    iget-object v0, v0, Lcom/unity3d/scar/adapter/v2100/a$b;->c:Lcom/unity3d/scar/adapter/v2100/a;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2100/a;->h(Lcom/unity3d/scar/adapter/v2100/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2100/a$b$a;->a:Lcom/unity3d/scar/adapter/v2100/a$b;

    iget-object v1, v1, Lcom/unity3d/scar/adapter/v2100/a$b;->b:Lcom/unity3d/scar/adapter/common/scarads/c;

    invoke-virtual {v1}, Lcom/unity3d/scar/adapter/common/scarads/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/scar/adapter/v2100/a$b$a;->a:Lcom/unity3d/scar/adapter/v2100/a$b;

    iget-object v2, v2, Lcom/unity3d/scar/adapter/v2100/a$b;->a:Lcom/unity3d/scar/adapter/v2100/c/g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
