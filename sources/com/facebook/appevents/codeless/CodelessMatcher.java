package com.facebook.appevents.codeless;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.annotation.UiThread;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.appevents.codeless.internal.EventBinding;
import com.facebook.appevents.codeless.internal.ParameterComponent;
import com.facebook.appevents.codeless.internal.PathComponent;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: CodelessMatcher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CodelessMatcher {
    private static final String CURRENT_CLASS_NAME = ".";
    private static final String PARENT_CLASS_NAME = "..";
    private static CodelessMatcher codelessMatcher;
    private final Set<Activity> activitiesSet;
    private final HashMap<Integer, HashSet<String>> activityToListenerMap;
    private HashSet<String> listenerSet;
    private final Handler uiThreadHandler;
    private final Set<ViewMatcher> viewMatchers;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = CodelessMatcher.class.getCanonicalName();

    /* JADX INFO: compiled from: CodelessMatcher.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final synchronized CodelessMatcher getInstance() {
            CodelessMatcher codelessMatcherAccess$getCodelessMatcher$cp;
            if (CodelessMatcher.access$getCodelessMatcher$cp() == null) {
                CodelessMatcher.access$setCodelessMatcher$cp(new CodelessMatcher(null));
            }
            codelessMatcherAccess$getCodelessMatcher$cp = CodelessMatcher.access$getCodelessMatcher$cp();
            if (codelessMatcherAccess$getCodelessMatcher$cp == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessMatcher");
            }
            return codelessMatcherAccess$getCodelessMatcher$cp;
        }

        @UiThread
        public final Bundle getParameters(EventBinding eventBinding, View rootView, View hostView) {
            List<ParameterComponent> viewParameters;
            List<MatchedView> listFindViewByPath;
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            Bundle bundle = new Bundle();
            if (eventBinding != null && (viewParameters = eventBinding.getViewParameters()) != null) {
                for (ParameterComponent parameterComponent : viewParameters) {
                    if (parameterComponent.getValue() != null) {
                        if (parameterComponent.getValue().length() > 0) {
                            bundle.putString(parameterComponent.getName(), parameterComponent.getValue());
                        }
                    }
                    if (parameterComponent.getPath().size() > 0) {
                        if (Intrinsics.areEqual(parameterComponent.getPathType(), Constants.PATH_TYPE_RELATIVE)) {
                            ViewMatcher.Companion companion = ViewMatcher.Companion;
                            List<PathComponent> path = parameterComponent.getPath();
                            String simpleName = hostView.getClass().getSimpleName();
                            Intrinsics.checkNotNullExpressionValue(simpleName, "hostView.javaClass.simpleName");
                            listFindViewByPath = companion.findViewByPath(eventBinding, hostView, path, 0, -1, simpleName);
                        } else {
                            ViewMatcher.Companion companion2 = ViewMatcher.Companion;
                            List<PathComponent> path2 = parameterComponent.getPath();
                            String simpleName2 = rootView.getClass().getSimpleName();
                            Intrinsics.checkNotNullExpressionValue(simpleName2, "rootView.javaClass.simpleName");
                            listFindViewByPath = companion2.findViewByPath(eventBinding, rootView, path2, 0, -1, simpleName2);
                        }
                        Iterator<MatchedView> it = listFindViewByPath.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                MatchedView next = it.next();
                                if (next.getView() != null) {
                                    ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
                                    String textOfView = ViewHierarchy.getTextOfView(next.getView());
                                    if (textOfView.length() > 0) {
                                        bundle.putString(parameterComponent.getName(), textOfView);
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return bundle;
        }
    }

    /* JADX INFO: compiled from: CodelessMatcher.kt */
    public static final class MatchedView {
        private final WeakReference<View> view;
        private final String viewMapKey;

        public MatchedView(View view, String viewMapKey) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(viewMapKey, "viewMapKey");
            this.view = new WeakReference<>(view);
            this.viewMapKey = viewMapKey;
        }

        public final View getView() {
            WeakReference<View> weakReference = this.view;
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }

        public final String getViewMapKey() {
            return this.viewMapKey;
        }
    }

    /* JADX INFO: compiled from: CodelessMatcher.kt */
    @UiThread
    public static final class ViewMatcher implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {
        public static final Companion Companion = new Companion(null);
        private final String activityName;
        private List<EventBinding> eventBindings;
        private final Handler handler;
        private final HashSet<String> listenerSet;
        private final WeakReference<View> rootView;

        /* JADX INFO: compiled from: CodelessMatcher.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            private final List<View> findVisibleChildren(ViewGroup viewGroup) {
                ArrayList arrayList = new ArrayList();
                int childCount = viewGroup.getChildCount();
                if (childCount > 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        View child = viewGroup.getChildAt(i);
                        if (child.getVisibility() == 0) {
                            Intrinsics.checkNotNullExpressionValue(child, "child");
                            arrayList.add(child);
                        }
                        if (i2 >= childCount) {
                            break;
                        }
                        i = i2;
                    }
                }
                return arrayList;
            }

            /* JADX WARN: Code restructure failed: missing block: B:14:0x0063, code lost:
            
                if (kotlin.jvm.internal.Intrinsics.areEqual(r9.getClass().getSimpleName(), (java.lang.String) r11.get(r11.size() - 1)) == false) goto L15;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            private final boolean isTheSameView(android.view.View r9, com.facebook.appevents.codeless.internal.PathComponent r10, int r11) {
                /*
                    Method dump skipped, instruction units count: 333
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.codeless.CodelessMatcher.ViewMatcher.Companion.isTheSameView(android.view.View, com.facebook.appevents.codeless.internal.PathComponent, int):boolean");
            }

            public final List<MatchedView> findViewByPath(EventBinding eventBinding, View view, List<PathComponent> path, int i, int i2, String mapKey) {
                List<View> listFindVisibleChildren;
                int size;
                List<View> listFindVisibleChildren2;
                int size2;
                Intrinsics.checkNotNullParameter(path, "path");
                Intrinsics.checkNotNullParameter(mapKey, "mapKey");
                String str = mapKey + '.' + i2;
                ArrayList arrayList = new ArrayList();
                if (view == null) {
                    return arrayList;
                }
                if (i >= path.size()) {
                    arrayList.add(new MatchedView(view, str));
                } else {
                    PathComponent pathComponent = path.get(i);
                    if (Intrinsics.areEqual(pathComponent.getClassName(), CodelessMatcher.PARENT_CLASS_NAME)) {
                        ViewParent parent = view.getParent();
                        if ((parent instanceof ViewGroup) && (size = (listFindVisibleChildren = findVisibleChildren((ViewGroup) parent)).size()) > 0) {
                            int i3 = 0;
                            while (true) {
                                int i4 = i3 + 1;
                                arrayList.addAll(findViewByPath(eventBinding, listFindVisibleChildren.get(i3), path, i + 1, i3, str));
                                if (i4 >= size) {
                                    break;
                                }
                                i3 = i4;
                            }
                        }
                        return arrayList;
                    }
                    if (Intrinsics.areEqual(pathComponent.getClassName(), CodelessMatcher.CURRENT_CLASS_NAME)) {
                        arrayList.add(new MatchedView(view, str));
                        return arrayList;
                    }
                    if (!isTheSameView(view, pathComponent, i2)) {
                        return arrayList;
                    }
                    if (i == path.size() - 1) {
                        arrayList.add(new MatchedView(view, str));
                    }
                }
                if ((view instanceof ViewGroup) && (size2 = (listFindVisibleChildren2 = findVisibleChildren((ViewGroup) view)).size()) > 0) {
                    int i5 = 0;
                    while (true) {
                        int i6 = i5 + 1;
                        arrayList.addAll(findViewByPath(eventBinding, listFindVisibleChildren2.get(i5), path, i + 1, i5, str));
                        if (i6 >= size2) {
                            break;
                        }
                        i5 = i6;
                    }
                }
                return arrayList;
            }
        }

        public ViewMatcher(View view, Handler handler, HashSet<String> listenerSet, String activityName) {
            Intrinsics.checkNotNullParameter(handler, "handler");
            Intrinsics.checkNotNullParameter(listenerSet, "listenerSet");
            Intrinsics.checkNotNullParameter(activityName, "activityName");
            this.rootView = new WeakReference<>(view);
            this.handler = handler;
            this.listenerSet = listenerSet;
            this.activityName = activityName;
            handler.postDelayed(this, 200L);
        }

        private final void attachListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            if (eventBinding == null) {
                return;
            }
            try {
                View view2 = matchedView.getView();
                if (view2 == null) {
                    return;
                }
                ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
                View viewFindRCTRootView = ViewHierarchy.findRCTRootView(view2);
                if (viewFindRCTRootView != null && viewHierarchy.isRCTButton(view2, viewFindRCTRootView)) {
                    attachRCTListener(matchedView, view, eventBinding);
                    return;
                }
                String name = view2.getClass().getName();
                Intrinsics.checkNotNullExpressionValue(name, "view.javaClass.name");
                if (StringsKt__StringsJVMKt.startsWith$default(name, "com.facebook.react", false, 2, null)) {
                    return;
                }
                if (!(view2 instanceof AdapterView)) {
                    attachOnClickListener(matchedView, view, eventBinding);
                } else if (view2 instanceof ListView) {
                    attachOnItemClickListener(matchedView, view, eventBinding);
                }
            } catch (Exception e2) {
                Utility utility = Utility.INSTANCE;
                Utility.logd(CodelessMatcher.access$getTAG$cp(), e2);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final void attachOnClickListener(com.facebook.appevents.codeless.CodelessMatcher.MatchedView r4, android.view.View r5, com.facebook.appevents.codeless.internal.EventBinding r6) {
            /*
                r3 = this;
                android.view.View r0 = r4.getView()
                if (r0 != 0) goto L7
                return
            L7:
                java.lang.String r4 = r4.getViewMapKey()
                com.facebook.appevents.codeless.internal.ViewHierarchy r1 = com.facebook.appevents.codeless.internal.ViewHierarchy.INSTANCE
                android.view.View$OnClickListener r1 = com.facebook.appevents.codeless.internal.ViewHierarchy.getExistingOnClickListener(r0)
                boolean r2 = r1 instanceof com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnClickListener
                if (r2 == 0) goto L24
                java.lang.String r2 = "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnClickListener"
                java.util.Objects.requireNonNull(r1, r2)
                com.facebook.appevents.codeless.CodelessLoggingEventListener$AutoLoggingOnClickListener r1 = (com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnClickListener) r1
                boolean r1 = r1.getSupportCodelessLogging()
                if (r1 == 0) goto L24
                r1 = 1
                goto L25
            L24:
                r1 = 0
            L25:
                java.util.HashSet<java.lang.String> r2 = r3.listenerSet
                boolean r2 = r2.contains(r4)
                if (r2 != 0) goto L3d
                if (r1 != 0) goto L3d
                com.facebook.appevents.codeless.CodelessLoggingEventListener r1 = com.facebook.appevents.codeless.CodelessLoggingEventListener.INSTANCE
                com.facebook.appevents.codeless.CodelessLoggingEventListener$AutoLoggingOnClickListener r5 = com.facebook.appevents.codeless.CodelessLoggingEventListener.getOnClickListener(r6, r5, r0)
                r0.setOnClickListener(r5)
                java.util.HashSet<java.lang.String> r5 = r3.listenerSet
                r5.add(r4)
            L3d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.codeless.CodelessMatcher.ViewMatcher.attachOnClickListener(com.facebook.appevents.codeless.CodelessMatcher$MatchedView, android.view.View, com.facebook.appevents.codeless.internal.EventBinding):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final void attachOnItemClickListener(com.facebook.appevents.codeless.CodelessMatcher.MatchedView r4, android.view.View r5, com.facebook.appevents.codeless.internal.EventBinding r6) {
            /*
                r3 = this;
                android.view.View r0 = r4.getView()
                android.widget.AdapterView r0 = (android.widget.AdapterView) r0
                if (r0 != 0) goto L9
                return
            L9:
                java.lang.String r4 = r4.getViewMapKey()
                android.widget.AdapterView$OnItemClickListener r1 = r0.getOnItemClickListener()
                boolean r2 = r1 instanceof com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnItemClickListener
                if (r2 == 0) goto L24
                java.lang.String r2 = "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnItemClickListener"
                java.util.Objects.requireNonNull(r1, r2)
                com.facebook.appevents.codeless.CodelessLoggingEventListener$AutoLoggingOnItemClickListener r1 = (com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnItemClickListener) r1
                boolean r1 = r1.getSupportCodelessLogging()
                if (r1 == 0) goto L24
                r1 = 1
                goto L25
            L24:
                r1 = 0
            L25:
                java.util.HashSet<java.lang.String> r2 = r3.listenerSet
                boolean r2 = r2.contains(r4)
                if (r2 != 0) goto L3d
                if (r1 != 0) goto L3d
                com.facebook.appevents.codeless.CodelessLoggingEventListener r1 = com.facebook.appevents.codeless.CodelessLoggingEventListener.INSTANCE
                com.facebook.appevents.codeless.CodelessLoggingEventListener$AutoLoggingOnItemClickListener r5 = com.facebook.appevents.codeless.CodelessLoggingEventListener.getOnItemClickListener(r6, r5, r0)
                r0.setOnItemClickListener(r5)
                java.util.HashSet<java.lang.String> r5 = r3.listenerSet
                r5.add(r4)
            L3d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.codeless.CodelessMatcher.ViewMatcher.attachOnItemClickListener(com.facebook.appevents.codeless.CodelessMatcher$MatchedView, android.view.View, com.facebook.appevents.codeless.internal.EventBinding):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final void attachRCTListener(com.facebook.appevents.codeless.CodelessMatcher.MatchedView r4, android.view.View r5, com.facebook.appevents.codeless.internal.EventBinding r6) {
            /*
                r3 = this;
                android.view.View r0 = r4.getView()
                if (r0 != 0) goto L7
                return
            L7:
                java.lang.String r4 = r4.getViewMapKey()
                com.facebook.appevents.codeless.internal.ViewHierarchy r1 = com.facebook.appevents.codeless.internal.ViewHierarchy.INSTANCE
                android.view.View$OnTouchListener r1 = com.facebook.appevents.codeless.internal.ViewHierarchy.getExistingOnTouchListener(r0)
                boolean r2 = r1 instanceof com.facebook.appevents.codeless.RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener
                if (r2 == 0) goto L24
                java.lang.String r2 = "null cannot be cast to non-null type com.facebook.appevents.codeless.RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener"
                java.util.Objects.requireNonNull(r1, r2)
                com.facebook.appevents.codeless.RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener r1 = (com.facebook.appevents.codeless.RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener) r1
                boolean r1 = r1.getSupportCodelessLogging()
                if (r1 == 0) goto L24
                r1 = 1
                goto L25
            L24:
                r1 = 0
            L25:
                java.util.HashSet<java.lang.String> r2 = r3.listenerSet
                boolean r2 = r2.contains(r4)
                if (r2 != 0) goto L3d
                if (r1 != 0) goto L3d
                com.facebook.appevents.codeless.RCTCodelessLoggingEventListener r1 = com.facebook.appevents.codeless.RCTCodelessLoggingEventListener.INSTANCE
                com.facebook.appevents.codeless.RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener r5 = com.facebook.appevents.codeless.RCTCodelessLoggingEventListener.getOnTouchListener(r6, r5, r0)
                r0.setOnTouchListener(r5)
                java.util.HashSet<java.lang.String> r5 = r3.listenerSet
                r5.add(r4)
            L3d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.codeless.CodelessMatcher.ViewMatcher.attachRCTListener(com.facebook.appevents.codeless.CodelessMatcher$MatchedView, android.view.View, com.facebook.appevents.codeless.internal.EventBinding):void");
        }

        private final void findView(EventBinding eventBinding, View view) {
            if (eventBinding == null || view == null) {
                return;
            }
            String activityName = eventBinding.getActivityName();
            if ((activityName == null || activityName.length() == 0) || Intrinsics.areEqual(eventBinding.getActivityName(), this.activityName)) {
                List<PathComponent> viewPath = eventBinding.getViewPath();
                if (viewPath.size() > 25) {
                    return;
                }
                Iterator<MatchedView> it = Companion.findViewByPath(eventBinding, view, viewPath, 0, -1, this.activityName).iterator();
                while (it.hasNext()) {
                    attachListener(it.next(), view, eventBinding);
                }
            }
        }

        public static final List<MatchedView> findViewByPath(EventBinding eventBinding, View view, List<PathComponent> list, int i, int i2, String str) {
            return Companion.findViewByPath(eventBinding, view, list, i, i2, str);
        }

        private final void startMatch() {
            List<EventBinding> list = this.eventBindings;
            if (list == null || this.rootView.get() == null) {
                return;
            }
            int i = 0;
            int size = list.size() - 1;
            if (size < 0) {
                return;
            }
            while (true) {
                int i2 = i + 1;
                findView(list.get(i), this.rootView.get());
                if (i2 > size) {
                    return;
                } else {
                    i = i2;
                }
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            startMatch();
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            startMatch();
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                    String applicationId = FacebookSdk.getApplicationId();
                    FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
                    FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(applicationId);
                    if (appSettingsWithoutQuery != null && appSettingsWithoutQuery.getCodelessEventsEnabled()) {
                        List<EventBinding> array = EventBinding.Companion.parseArray(appSettingsWithoutQuery.getEventBindings());
                        this.eventBindings = array;
                        if (array == null || (view = this.rootView.get()) == null) {
                            return;
                        }
                        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                        if (viewTreeObserver.isAlive()) {
                            viewTreeObserver.addOnGlobalLayoutListener(this);
                            viewTreeObserver.addOnScrollChangedListener(this);
                        }
                        startMatch();
                        return;
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                } catch (Throwable th2) {
                    CrashShieldHandler.handleThrowable(th2, this);
                }
            } catch (Throwable th3) {
                CrashShieldHandler.handleThrowable(th3, this);
            }
        }
    }

    private CodelessMatcher() {
        this.uiThreadHandler = new Handler(Looper.getMainLooper());
        Set<Activity> setNewSetFromMap = Collections.newSetFromMap(new WeakHashMap());
        Intrinsics.checkNotNullExpressionValue(setNewSetFromMap, "newSetFromMap(WeakHashMap())");
        this.activitiesSet = setNewSetFromMap;
        this.viewMatchers = new LinkedHashSet();
        this.listenerSet = new HashSet<>();
        this.activityToListenerMap = new HashMap<>();
    }

    public /* synthetic */ CodelessMatcher(n nVar) {
        this();
    }

    public static final /* synthetic */ CodelessMatcher access$getCodelessMatcher$cp() {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return null;
        }
        try {
            return codelessMatcher;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
            return null;
        }
    }

    public static final /* synthetic */ String access$getTAG$cp() {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return null;
        }
        try {
            return TAG;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
            return null;
        }
    }

    public static final /* synthetic */ void access$setCodelessMatcher$cp(CodelessMatcher codelessMatcher2) {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return;
        }
        try {
            codelessMatcher = codelessMatcher2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
        }
    }

    public static final synchronized CodelessMatcher getInstance() {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return null;
        }
        try {
            return Companion.getInstance();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
            return null;
        }
    }

    @UiThread
    public static final Bundle getParameters(EventBinding eventBinding, View view, View view2) {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return null;
        }
        try {
            return Companion.getParameters(eventBinding, view, view2);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
            return null;
        }
    }

    private final void matchViews() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            for (Activity activity : this.activitiesSet) {
                if (activity != null) {
                    AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
                    View rootView = AppEventUtility.getRootView(activity);
                    String activityName = activity.getClass().getSimpleName();
                    Handler handler = this.uiThreadHandler;
                    HashSet<String> hashSet = this.listenerSet;
                    Intrinsics.checkNotNullExpressionValue(activityName, "activityName");
                    this.viewMatchers.add(new ViewMatcher(rootView, handler, hashSet, activityName));
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private final void startTracking() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                matchViews();
            } else {
                this.uiThreadHandler.post(new Runnable() { // from class: com.facebook.appevents.codeless.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        CodelessMatcher.m84startTracking$lambda1(this.a);
                    }
                });
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startTracking$lambda-1, reason: not valid java name */
    public static final void m84startTracking$lambda1(CodelessMatcher this$0) {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.matchViews();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
        }
    }

    @UiThread
    public final void add(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            InternalSettings internalSettings = InternalSettings.INSTANCE;
            if (InternalSettings.isUnityApp()) {
                return;
            }
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                throw new FacebookException("Can't add activity to CodelessMatcher on non-UI thread");
            }
            this.activitiesSet.add(activity);
            this.listenerSet.clear();
            HashSet<String> hashSet = this.activityToListenerMap.get(Integer.valueOf(activity.hashCode()));
            if (hashSet != null) {
                this.listenerSet = hashSet;
            }
            startTracking();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @UiThread
    public final void destroy(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activityToListenerMap.remove(Integer.valueOf(activity.hashCode()));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @UiThread
    public final void remove(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            InternalSettings internalSettings = InternalSettings.INSTANCE;
            if (InternalSettings.isUnityApp()) {
                return;
            }
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                throw new FacebookException("Can't remove activity from CodelessMatcher on non-UI thread");
            }
            this.activitiesSet.remove(activity);
            this.viewMatchers.clear();
            this.activityToListenerMap.put(Integer.valueOf(activity.hashCode()), (HashSet) this.listenerSet.clone());
            this.listenerSet.clear();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
