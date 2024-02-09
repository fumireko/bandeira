import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GerarEncarteComponent } from './gerar-encarte.component';

describe('GerarEncarteComponent', () => {
  let component: GerarEncarteComponent;
  let fixture: ComponentFixture<GerarEncarteComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [GerarEncarteComponent]
    });
    fixture = TestBed.createComponent(GerarEncarteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
