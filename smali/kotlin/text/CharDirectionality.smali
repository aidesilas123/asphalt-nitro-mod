###### Class kotlin.text.CharDirectionality (kotlin.text.CharDirectionality)
.class public final enum Lkotlin/text/CharDirectionality;
.super Ljava/lang/Enum;
.source "CharDirectionality.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/CharDirectionality$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/CharDirectionality;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0019\u0008\u0086\u0081\u0002\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/text/CharDirectionality;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "UNDEFINED",
        "LEFT_TO_RIGHT",
        "RIGHT_TO_LEFT",
        "RIGHT_TO_LEFT_ARABIC",
        "EUROPEAN_NUMBER",
        "EUROPEAN_NUMBER_SEPARATOR",
        "EUROPEAN_NUMBER_TERMINATOR",
        "ARABIC_NUMBER",
        "COMMON_NUMBER_SEPARATOR",
        "NONSPACING_MARK",
        "BOUNDARY_NEUTRAL",
        "PARAGRAPH_SEPARATOR",
        "SEGMENT_SEPARATOR",
        "WHITESPACE",
        "OTHER_NEUTRALS",
        "LEFT_TO_RIGHT_EMBEDDING",
        "LEFT_TO_RIGHT_OVERRIDE",
        "RIGHT_TO_LEFT_EMBEDDING",
        "RIGHT_TO_LEFT_OVERRIDE",
        "POP_DIRECTIONAL_FORMAT",
        "Companion",
        "kotlin-stdlib"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/text/CharDirectionality$b;

.field private static final b:Lkotlin/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/i<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/text/CharDirectionality;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum c:Lkotlin/text/CharDirectionality;

.field public static final enum d:Lkotlin/text/CharDirectionality;

.field public static final enum e:Lkotlin/text/CharDirectionality;

.field public static final enum f:Lkotlin/text/CharDirectionality;

.field public static final enum g:Lkotlin/text/CharDirectionality;

.field public static final enum h:Lkotlin/text/CharDirectionality;

.field public static final enum i:Lkotlin/text/CharDirectionality;

.field public static final enum j:Lkotlin/text/CharDirectionality;

.field public static final enum k:Lkotlin/text/CharDirectionality;

.field public static final enum l:Lkotlin/text/CharDirectionality;

.field public static final enum m:Lkotlin/text/CharDirectionality;

.field public static final enum n:Lkotlin/text/CharDirectionality;

.field public static final enum o:Lkotlin/text/CharDirectionality;

.field public static final enum p:Lkotlin/text/CharDirectionality;

.field public static final enum q:Lkotlin/text/CharDirectionality;

.field public static final enum r:Lkotlin/text/CharDirectionality;

.field public static final enum s:Lkotlin/text/CharDirectionality;

.field public static final enum t:Lkotlin/text/CharDirectionality;

.field public static final enum u:Lkotlin/text/CharDirectionality;

.field public static final enum v:Lkotlin/text/CharDirectionality;

.field private static final synthetic w:[Lkotlin/text/CharDirectionality;

.field private static final synthetic x:Lkotlin/enums/a;


# instance fields
.field private final y:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->c:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->d:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "RIGHT_TO_LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->e:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "RIGHT_TO_LEFT_ARABIC"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->f:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "EUROPEAN_NUMBER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->g:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "EUROPEAN_NUMBER_SEPARATOR"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->h:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "EUROPEAN_NUMBER_TERMINATOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->i:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "ARABIC_NUMBER"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->j:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "COMMON_NUMBER_SEPARATOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->k:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "NONSPACING_MARK"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->l:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "BOUNDARY_NEUTRAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->m:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "PARAGRAPH_SEPARATOR"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->n:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "SEGMENT_SEPARATOR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->o:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "WHITESPACE"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->p:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "OTHER_NEUTRALS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->q:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "LEFT_TO_RIGHT_EMBEDDING"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->r:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "LEFT_TO_RIGHT_OVERRIDE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->s:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "RIGHT_TO_LEFT_EMBEDDING"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->t:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "RIGHT_TO_LEFT_OVERRIDE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->u:Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality;

    const-string v1, "POP_DIRECTIONAL_FORMAT"

    const/16 v3, 0x13

    invoke-direct {v0, v1, v3, v2}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/text/CharDirectionality;->v:Lkotlin/text/CharDirectionality;

    invoke-static {}, Lkotlin/text/CharDirectionality;->e()[Lkotlin/text/CharDirectionality;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharDirectionality;->w:[Lkotlin/text/CharDirectionality;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/a;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharDirectionality;->x:Lkotlin/enums/a;

    new-instance v0, Lkotlin/text/CharDirectionality$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/CharDirectionality$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lkotlin/text/CharDirectionality;->a:Lkotlin/text/CharDirectionality$b;

    sget-object v0, Lkotlin/text/CharDirectionality$a;->a:Lkotlin/text/CharDirectionality$a;

    invoke-static {v0}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharDirectionality;->b:Lkotlin/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/CharDirectionality;->y:I

    return-void
.end method

.method public static final synthetic access$getDirectionalityMap$delegate$cp()Lkotlin/i;
    .registers 1

    sget-object v0, Lkotlin/text/CharDirectionality;->b:Lkotlin/i;

    return-object v0
.end method

.method private static final synthetic e()[Lkotlin/text/CharDirectionality;
    .registers 3

    const/16 v0, 0x14

    new-array v0, v0, [Lkotlin/text/CharDirectionality;

    sget-object v1, Lkotlin/text/CharDirectionality;->c:Lkotlin/text/CharDirectionality;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->d:Lkotlin/text/CharDirectionality;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->e:Lkotlin/text/CharDirectionality;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->f:Lkotlin/text/CharDirectionality;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->g:Lkotlin/text/CharDirectionality;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->h:Lkotlin/text/CharDirectionality;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->i:Lkotlin/text/CharDirectionality;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->j:Lkotlin/text/CharDirectionality;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->k:Lkotlin/text/CharDirectionality;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->l:Lkotlin/text/CharDirectionality;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->m:Lkotlin/text/CharDirectionality;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->n:Lkotlin/text/CharDirectionality;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->o:Lkotlin/text/CharDirectionality;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->p:Lkotlin/text/CharDirectionality;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->q:Lkotlin/text/CharDirectionality;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->r:Lkotlin/text/CharDirectionality;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->s:Lkotlin/text/CharDirectionality;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->t:Lkotlin/text/CharDirectionality;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->u:Lkotlin/text/CharDirectionality;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharDirectionality;->v:Lkotlin/text/CharDirectionality;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/a<",
            "Lkotlin/text/CharDirectionality;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlin/text/CharDirectionality;->x:Lkotlin/enums/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/CharDirectionality;
    .registers 2

    const-class v0, Lkotlin/text/CharDirectionality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/text/CharDirectionality;

    return-object p0
.end method

.method public static values()[Lkotlin/text/CharDirectionality;
    .registers 1

    sget-object v0, Lkotlin/text/CharDirectionality;->w:[Lkotlin/text/CharDirectionality;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/CharDirectionality;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .registers 2

    iget v0, p0, Lkotlin/text/CharDirectionality;->y:I

    return v0
.end method

###### Class kotlin.text.CharDirectionality.a (kotlin.text.CharDirectionality$a)
.class final Lkotlin/text/CharDirectionality$a;
.super Lkotlin/jvm/internal/t;
.source "CharDirectionality.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/CharDirectionality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "+",
        "Lkotlin/text/CharDirectionality;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "Lkotlin/text/CharDirectionality;",
        "invoke"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/text/CharDirectionality$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/text/CharDirectionality$a;

    invoke-direct {v0}, Lkotlin/text/CharDirectionality$a;-><init>()V

    sput-object v0, Lkotlin/text/CharDirectionality$a;->a:Lkotlin/text/CharDirectionality$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/text/CharDirectionality;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lkotlin/text/CharDirectionality;->getEntries()Lkotlin/enums/a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/d0;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/m;->coerceAtLeast(II)I

    move-result v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/text/CharDirectionality;

    invoke-virtual {v3}, Lkotlin/text/CharDirectionality;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_36
    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/text/CharDirectionality$a;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.text.CharDirectionality.b (kotlin.text.CharDirectionality$b)
.class public final Lkotlin/text/CharDirectionality$b;
.super Ljava/lang/Object;
.source "CharDirectionality.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/CharDirectionality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0005R\'\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/text/CharDirectionality$Companion;",
        "",
        "()V",
        "directionalityMap",
        "",
        "",
        "Lkotlin/text/CharDirectionality;",
        "getDirectionalityMap",
        "()Ljava/util/Map;",
        "directionalityMap$delegate",
        "Lkotlin/Lazy;",
        "valueOf",
        "directionality",
        "kotlin-stdlib"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/text/CharDirectionality$b;-><init>()V

    return-void
.end method

.method private final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/text/CharDirectionality;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lkotlin/text/CharDirectionality;->access$getDirectionalityMap$delegate$cp()Lkotlin/i;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final b(I)Lkotlin/text/CharDirectionality;
    .registers 5

    invoke-direct {p0}, Lkotlin/text/CharDirectionality$b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/text/CharDirectionality;

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directionality #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not defined."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
