###### Class com.applovin.impl.mediation.c.b.a (com.applovin.impl.mediation.c.b$a)
.class public Lcom/applovin/impl/mediation/c/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/c/b$a$a;
    }
.end annotation


# instance fields
.field private final avA:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final avB:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final avC:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final avD:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final avx:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final avy:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final avz:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 8
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/b$a;->avx:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/applovin/impl/mediation/c/b$a;->avy:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/applovin/impl/mediation/c/b$a;->avz:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/applovin/impl/mediation/c/b$a;->avA:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/applovin/impl/mediation/c/b$a;->avB:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/applovin/impl/mediation/c/b$a;->avC:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/applovin/impl/mediation/c/b$a;->avD:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/c/b$a;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/c/b$a;->avy:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/c/b$a;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/c/b$a;->avz:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/c/b$a;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/c/b$a;->avA:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/c/b$a;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/c/b$a;->avB:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/mediation/c/b$a;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/c/b$a;->avC:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/mediation/c/b$a;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/c/b$a;->avD:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/mediation/c/b$a;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/c/b$a;->avx:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static zt()Lcom/applovin/impl/mediation/c/b$a$a;
    .registers 1

    new-instance v0, Lcom/applovin/impl/mediation/c/b$a$a;

    invoke-direct {v0}, Lcom/applovin/impl/mediation/c/b$a$a;-><init>()V

    return-object v0
.end method
