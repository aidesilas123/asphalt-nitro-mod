package com.bytedance.sdk.openadsdk;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.dislike.TTDislikeListView;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TTDislikeDialogAbstract extends Dialog {
    private View a;
    private String b;
    private List<FilterWord> c;

    public TTDislikeDialogAbstract(@NonNull Context context) {
        super(context);
    }

    public TTDislikeDialogAbstract(@NonNull Context context, int i) {
        super(context, i);
    }

    private void a() {
        if (this.c == null || this.a == null) {
            return;
        }
        int[] tTDislikeListViewIds = getTTDislikeListViewIds();
        if (tTDislikeListViewIds == null || tTDislikeListViewIds.length <= 0) {
            throw new IllegalArgumentException("The options list of dislike is empty, please set TTDislikeListView");
        }
        for (int i : tTDislikeListViewIds) {
            View viewFindViewById = this.a.findViewById(i);
            if (viewFindViewById == null) {
                throw new IllegalArgumentException("getTTDislikeListViewIds can not find view by Id,please check");
            }
            if (!(viewFindViewById instanceof TTDislikeListView)) {
                throw new IllegalArgumentException("getTTDislikeListViewIds can not find view by Id , please check");
            }
            ((TTDislikeListView) viewFindViewById).setMaterialMeta(this.b);
        }
    }

    public abstract ViewGroup.LayoutParams getLayoutParams();

    public abstract View getLayoutView();

    public abstract int[] getTTDislikeListViewIds();

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View layoutView = getLayoutView();
        this.a = layoutView;
        if (layoutView == null) {
            throw new IllegalArgumentException("getLayoutView,layout  may be abnormal, please check");
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        View view = this.a;
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        }
        setContentView(view, layoutParams);
        a();
    }

    public void setMaterialMeta(String str, List<FilterWord> list) {
        this.b = str;
        this.c = list;
        a();
    }
}
