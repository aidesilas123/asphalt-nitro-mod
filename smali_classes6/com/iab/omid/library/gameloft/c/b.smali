###### Class com.iab.omid.library.gameloft.c.b (com.iab.omid.library.gameloft.c.b)
.class public Lcom/iab/omid/library/gameloft/c/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/iab/omid/library/gameloft/c/d;

.field private final b:Lcom/iab/omid/library/gameloft/c/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iab/omid/library/gameloft/c/d;

    invoke-direct {v0}, Lcom/iab/omid/library/gameloft/c/d;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/gameloft/c/b;->a:Lcom/iab/omid/library/gameloft/c/d;

    new-instance v1, Lcom/iab/omid/library/gameloft/c/c;

    invoke-direct {v1, v0}, Lcom/iab/omid/library/gameloft/c/c;-><init>(Lcom/iab/omid/library/gameloft/c/a;)V

    iput-object v1, p0, Lcom/iab/omid/library/gameloft/c/b;->b:Lcom/iab/omid/library/gameloft/c/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/iab/omid/library/gameloft/c/a;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/gameloft/c/b;->b:Lcom/iab/omid/library/gameloft/c/c;

    return-object v0
.end method

.method public b()Lcom/iab/omid/library/gameloft/c/a;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/gameloft/c/b;->a:Lcom/iab/omid/library/gameloft/c/d;

    return-object v0
.end method
