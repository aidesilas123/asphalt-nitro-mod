###### Class com.unity3d.scar.adapter.common.scarads.c (com.unity3d.scar.adapter.common.scarads.c)
.class public Lcom/unity3d/scar/adapter/common/scarads/c;
.super Ljava/lang/Object;
.source "ScarAdMetadata.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/scar/adapter/common/scarads/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/scarads/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/common/scarads/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/scar/adapter/common/scarads/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/scar/adapter/common/scarads/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/unity3d/scar/adapter/common/scarads/c;->e:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/scarads/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/scarads/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/scarads/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/scarads/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/scarads/c;->e:Ljava/lang/Integer;

    return-object v0
.end method
