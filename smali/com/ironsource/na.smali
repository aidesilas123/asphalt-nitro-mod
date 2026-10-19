###### Class com.json.na (com.ironsource.na)
.class public Lcom/ironsource/na;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/na$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/ironsource/oa;

.field private e:I

.field private f:I


# direct methods
.method private constructor <init>(ZZZLcom/ironsource/oa;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ironsource/na;->a:Z

    iput-boolean p2, p0, Lcom/ironsource/na;->b:Z

    iput-boolean p3, p0, Lcom/ironsource/na;->c:Z

    iput-object p4, p0, Lcom/ironsource/na;->d:Lcom/ironsource/oa;

    iput p5, p0, Lcom/ironsource/na;->e:I

    iput p6, p0, Lcom/ironsource/na;->f:I

    return-void
.end method

.method synthetic constructor <init>(ZZZLcom/ironsource/oa;IILcom/ironsource/na$a;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/ironsource/na;-><init>(ZZZLcom/ironsource/oa;II)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/oa;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/na;->d:Lcom/ironsource/oa;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/ironsource/na;->e:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/ironsource/na;->f:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/na;->b:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/na;->a:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/na;->c:Z

    return v0
.end method
