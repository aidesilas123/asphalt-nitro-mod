###### Class io.didomi.drawable.C1817l0.b (io.didomi.sdk.l0$b)
.class public final Lio/didomi/sdk/l0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lio/didomi/sdk/g;

.field private b:Lio/didomi/sdk/T2;

.field private c:Lio/didomi/sdk/b0;

.field private d:Lio/didomi/sdk/Q3;

.field private e:Lio/didomi/sdk/m5;

.field private f:Lio/didomi/sdk/F;

.field private g:Lio/didomi/sdk/L;

.field private h:Lio/didomi/sdk/K2;

.field private i:Lio/didomi/sdk/g4;

.field private j:Lio/didomi/sdk/Z5;

.field private k:Lio/didomi/sdk/J3;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/didomi/sdk/l0$a;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/l0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/didomi/sdk/J0;
    .registers 15

    iget-object v0, p0, Lio/didomi/sdk/l0$b;->a:Lio/didomi/sdk/g;

    if-nez v0, :cond_b

    new-instance v0, Lio/didomi/sdk/g;

    invoke-direct {v0}, Lio/didomi/sdk/g;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/l0$b;->a:Lio/didomi/sdk/g;

    :cond_b
    iget-object v0, p0, Lio/didomi/sdk/l0$b;->b:Lio/didomi/sdk/T2;

    if-nez v0, :cond_16

    new-instance v0, Lio/didomi/sdk/T2;

    invoke-direct {v0}, Lio/didomi/sdk/T2;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/l0$b;->b:Lio/didomi/sdk/T2;

    :cond_16
    iget-object v0, p0, Lio/didomi/sdk/l0$b;->c:Lio/didomi/sdk/b0;

    const-class v1, Lio/didomi/sdk/b0;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lio/didomi/sdk/l0$b;->d:Lio/didomi/sdk/Q3;

    const-class v1, Lio/didomi/sdk/Q3;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lio/didomi/sdk/l0$b;->e:Lio/didomi/sdk/m5;

    if-nez v0, :cond_2f

    new-instance v0, Lio/didomi/sdk/m5;

    invoke-direct {v0}, Lio/didomi/sdk/m5;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/l0$b;->e:Lio/didomi/sdk/m5;

    :cond_2f
    iget-object v0, p0, Lio/didomi/sdk/l0$b;->f:Lio/didomi/sdk/F;

    if-nez v0, :cond_3a

    new-instance v0, Lio/didomi/sdk/F;

    invoke-direct {v0}, Lio/didomi/sdk/F;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/l0$b;->f:Lio/didomi/sdk/F;

    :cond_3a
    iget-object v0, p0, Lio/didomi/sdk/l0$b;->g:Lio/didomi/sdk/L;

    if-nez v0, :cond_45

    new-instance v0, Lio/didomi/sdk/L;

    invoke-direct {v0}, Lio/didomi/sdk/L;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/l0$b;->g:Lio/didomi/sdk/L;

    :cond_45
    iget-object v0, p0, Lio/didomi/sdk/l0$b;->h:Lio/didomi/sdk/K2;

    const-class v1, Lio/didomi/sdk/K2;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lio/didomi/sdk/l0$b;->i:Lio/didomi/sdk/g4;

    if-nez v0, :cond_57

    new-instance v0, Lio/didomi/sdk/g4;

    invoke-direct {v0}, Lio/didomi/sdk/g4;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/l0$b;->i:Lio/didomi/sdk/g4;

    :cond_57
    iget-object v0, p0, Lio/didomi/sdk/l0$b;->j:Lio/didomi/sdk/Z5;

    if-nez v0, :cond_62

    new-instance v0, Lio/didomi/sdk/Z5;

    invoke-direct {v0}, Lio/didomi/sdk/Z5;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/l0$b;->j:Lio/didomi/sdk/Z5;

    :cond_62
    iget-object v0, p0, Lio/didomi/sdk/l0$b;->k:Lio/didomi/sdk/J3;

    if-nez v0, :cond_6d

    new-instance v0, Lio/didomi/sdk/J3;

    invoke-direct {v0}, Lio/didomi/sdk/J3;-><init>()V

    iput-object v0, p0, Lio/didomi/sdk/l0$b;->k:Lio/didomi/sdk/J3;

    :cond_6d
    new-instance v0, Lio/didomi/sdk/l0$c;

    iget-object v2, p0, Lio/didomi/sdk/l0$b;->a:Lio/didomi/sdk/g;

    iget-object v3, p0, Lio/didomi/sdk/l0$b;->b:Lio/didomi/sdk/T2;

    iget-object v4, p0, Lio/didomi/sdk/l0$b;->c:Lio/didomi/sdk/b0;

    iget-object v5, p0, Lio/didomi/sdk/l0$b;->d:Lio/didomi/sdk/Q3;

    iget-object v6, p0, Lio/didomi/sdk/l0$b;->e:Lio/didomi/sdk/m5;

    iget-object v7, p0, Lio/didomi/sdk/l0$b;->f:Lio/didomi/sdk/F;

    iget-object v8, p0, Lio/didomi/sdk/l0$b;->g:Lio/didomi/sdk/L;

    iget-object v9, p0, Lio/didomi/sdk/l0$b;->h:Lio/didomi/sdk/K2;

    iget-object v10, p0, Lio/didomi/sdk/l0$b;->i:Lio/didomi/sdk/g4;

    iget-object v11, p0, Lio/didomi/sdk/l0$b;->j:Lio/didomi/sdk/Z5;

    iget-object v12, p0, Lio/didomi/sdk/l0$b;->k:Lio/didomi/sdk/J3;

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lio/didomi/sdk/l0$c;-><init>(Lio/didomi/sdk/g;Lio/didomi/sdk/T2;Lio/didomi/sdk/b0;Lio/didomi/sdk/Q3;Lio/didomi/sdk/m5;Lio/didomi/sdk/F;Lio/didomi/sdk/L;Lio/didomi/sdk/K2;Lio/didomi/sdk/g4;Lio/didomi/sdk/Z5;Lio/didomi/sdk/J3;Lio/didomi/sdk/l0$a;)V

    return-object v0
.end method

.method public a(Lio/didomi/sdk/F;)Lio/didomi/sdk/l0$b;
    .registers 2

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/F;

    iput-object p1, p0, Lio/didomi/sdk/l0$b;->f:Lio/didomi/sdk/F;

    return-object p0
.end method

.method public a(Lio/didomi/sdk/K2;)Lio/didomi/sdk/l0$b;
    .registers 2

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/K2;

    iput-object p1, p0, Lio/didomi/sdk/l0$b;->h:Lio/didomi/sdk/K2;

    return-object p0
.end method

.method public a(Lio/didomi/sdk/L;)Lio/didomi/sdk/l0$b;
    .registers 2

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/L;

    iput-object p1, p0, Lio/didomi/sdk/l0$b;->g:Lio/didomi/sdk/L;

    return-object p0
.end method

.method public a(Lio/didomi/sdk/Q3;)Lio/didomi/sdk/l0$b;
    .registers 2

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/Q3;

    iput-object p1, p0, Lio/didomi/sdk/l0$b;->d:Lio/didomi/sdk/Q3;

    return-object p0
.end method

.method public a(Lio/didomi/sdk/T2;)Lio/didomi/sdk/l0$b;
    .registers 2

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/T2;

    iput-object p1, p0, Lio/didomi/sdk/l0$b;->b:Lio/didomi/sdk/T2;

    return-object p0
.end method

.method public a(Lio/didomi/sdk/b0;)Lio/didomi/sdk/l0$b;
    .registers 2

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/b0;

    iput-object p1, p0, Lio/didomi/sdk/l0$b;->c:Lio/didomi/sdk/b0;

    return-object p0
.end method

.method public a(Lio/didomi/sdk/g;)Lio/didomi/sdk/l0$b;
    .registers 2

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/g;

    iput-object p1, p0, Lio/didomi/sdk/l0$b;->a:Lio/didomi/sdk/g;

    return-object p0
.end method

.method public a(Lio/didomi/sdk/m5;)Lio/didomi/sdk/l0$b;
    .registers 2

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/m5;

    iput-object p1, p0, Lio/didomi/sdk/l0$b;->e:Lio/didomi/sdk/m5;

    return-object p0
.end method
