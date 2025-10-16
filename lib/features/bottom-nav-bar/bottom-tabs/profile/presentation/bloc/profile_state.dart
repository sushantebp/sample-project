part of 'profile_bloc.dart';

enum ProfileStatus { initial, fetching, fetched, failed, success }

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(_emptyUser) UserEntity userEntity,
    @Default(ProfileStatus.initial) ProfileStatus profileStatus,
  }) = _ProfileState;
}

// defined an empty/default user entity
const _emptyUser = UserEntity(
  id: 0,
  firstName: '',
  lastName: '',
  maidenName: '',
  age: 0,
  gender: '',
  email: '',
  phone: '',
  username: '',
  password: '',
  birthDate: '',
  image: '',
  bloodGroup: '',
  height: 0,
  weight: 0,
  eyeColor: '',
  hair: HairEntity(color: '', type: ''),
  ip: '',
  address: AddressEntity(
    address: '',
    city: '',
    state: '',
    stateCode: '',
    postalCode: '',
    coordinates: CoordinatesEntity(lat: 0, lng: 0),
    country: '',
  ),
  macAddress: '',
  university: '',
  bank: BankEntity(
    cardExpire: '',
    cardNumber: '',
    cardType: '',
    currency: '',
    iban: '',
  ),
  company: CompanyEntity(
    department: '',
    name: '',
    title: '',
    address: AddressEntity(
      address: '',
      city: '',
      state: '',
      stateCode: '',
      postalCode: '',
      coordinates: CoordinatesEntity(lat: 0, lng: 0),
      country: '',
    ),
  ),
  ein: '',
  ssn: '',
  userAgent: '',
  crypto: CryptoEntity(coin: '', wallet: '', network: ''),
  role: '',
);
