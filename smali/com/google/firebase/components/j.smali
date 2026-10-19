###### Class com.google.firebase.components.j (com.google.firebase.components.j)
.class public final synthetic Lcom/google/firebase/components/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# static fields
.field public static final synthetic a:Lcom/google/firebase/components/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/components/j;

    invoke-direct {v0}, Lcom/google/firebase/components/j;-><init>()V

    sput-object v0, Lcom/google/firebase/components/j;->a:Lcom/google/firebase/components/j;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
